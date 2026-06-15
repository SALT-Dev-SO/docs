#!/usr/bin/env bash
set -euo pipefail

HANDOFF_URL="${HANDOFF_URL:-https://salt-platform.up.railway.app/docs-login?redirect=/}"
DOCS_ORIGIN="${DOCS_ORIGIN:-https://salt-7cda89d5.mintlify.app}"
DOCS_PROTECTED_PATHS="${DOCS_PROTECTED_PATHS:-$'/
/engineering/docs-access-control
/llms.txt
/llms-full.txt
/.well-known/agent-skills/index.json'}"
DOCS_REQUIRED_ROUTABLE_PATHS="${DOCS_REQUIRED_ROUTABLE_PATHS:-$'/
/engineering/docs-access-control
/login/jwt-callback?redirect=/'}"
DOCS_PUBLIC_MARKERS="${DOCS_PUBLIC_MARKERS:-SALT Documentation|SALT Docs|Project Silverado PIPE|data-docs-theme=\"mint\"|/engineering/docs-access-control}"

handoff_headers="$(mktemp)"
handoff_body="$(mktemp)"

cleanup() {
  rm -f "$handoff_headers" "$handoff_body"
}
trap cleanup EXIT

handoff_status="$(
  curl -sS -L --max-time 20 \
    -D "$handoff_headers" \
    -o "$handoff_body" \
    -w "%{http_code}" \
    "$HANDOFF_URL"
)"

if [ "$handoff_status" -lt 200 ] || [ "$handoff_status" -ge 400 ]; then
  echo "::error::SALT docs-login handoff returned HTTP $handoff_status"
  sed -n '1,40p' "$handoff_headers"
  exit 1
fi

echo "SALT docs-login handoff is reachable with HTTP $handoff_status."

leaked=0
unroutable=0

while IFS= read -r docs_path; do
  if [ -z "$docs_path" ]; then
    continue
  fi

  docs_headers="$(mktemp)"
  docs_body="$(mktemp)"
  docs_url="${DOCS_ORIGIN%/}${docs_path}"

  docs_status="$(
    curl -sS -L --max-time 20 \
      -D "$docs_headers" \
      -o "$docs_body" \
      -w "%{http_code}" \
      "$docs_url"
  )"

  echo "Mintlify direct access for $docs_path returned HTTP $docs_status."
  sed -n '1,40p' "$docs_headers"

  if grep -Eiq "$DOCS_PUBLIC_MARKERS" "$docs_body"; then
    echo "::error::Mintlify direct access exposes SALT docs content at $docs_path without the SALT JWT handoff."
    leaked=1
  fi

  rm -f "$docs_headers" "$docs_body"
done <<< "$DOCS_PROTECTED_PATHS"

while IFS= read -r docs_path; do
  if [ -z "$docs_path" ]; then
    continue
  fi

  docs_headers="$(mktemp)"
  docs_body="$(mktemp)"
  docs_url="${DOCS_ORIGIN%/}${docs_path}"

  docs_status="$(
    curl -sS -L --max-time 20 \
      -D "$docs_headers" \
      -o "$docs_body" \
      -w "%{http_code}" \
      "$docs_url"
  )"

  echo "Mintlify routability check for $docs_path returned HTTP $docs_status."
  sed -n '1,40p' "$docs_headers"

  if [ "$docs_status" = "404" ]; then
    echo "::error::Mintlify required path $docs_path returns 404. This proves the docs/JWT callback route is not routable, not that JWT handoff is configured."
    unroutable=1
  fi

  rm -f "$docs_headers" "$docs_body"
done <<< "$DOCS_REQUIRED_ROUTABLE_PATHS"

if [ "$leaked" -ne 0 ] || [ "$unroutable" -ne 0 ]; then
  exit 1
fi

echo "Mintlify direct access did not expose known SALT docs content markers."
