# SALT SPEQUA Issue Templates — Governance Notice

This directory holds the standardized Spequa SDD issue templates used across every non-archived repo in the [SALT-Platform](https://github.com/SALT-Platform) GitHub organization.

## Canonical source of truth

- **File:** `.github/ISSUE_TEMPLATE/spec-plan.md`
- **Canonical repo:** [SALT-Platform/salt-platform](https://github.com/SALT-Platform/salt-platform/blob/main/.github/ISSUE_TEMPLATE/spec-plan.md)
- **Pinned commit SHA at last sync:** `b936ed47830bd9d53cd8dac148cef3f2f61c25e4`
- **sha256 of `spec-plan.md`:** `56b3c2e6dec55cc53b21de272104ed3ef0cd23437f22a20b47f934cd0eccd3fc`
- **Originating PR:** [salt-platform PR #1596](https://github.com/SALT-Platform/salt-platform/pull/1596)
- **Standard:** SPEQUA SDD KIT — [saltlending.atlassian.net/wiki/…/pages/3636559876](https://saltlending.atlassian.net/wiki/spaces/~5e20a950a531f30ca384df3f/pages/3636559876)

## Rules for this repo

1. Every Spec Plan filed on this repo MUST use the `Spec Plan` issue template. No free-form Spec Plan issues.
2. The template body is **byte-identical** to the canonical file at the SHA above. Do not edit locally — propose changes upstream in `SALT-Platform/salt-platform` PR against `.github/ISSUE_TEMPLATE/spec-plan.md` and let the org-wide sync propagate.
3. Every unchecked box in the template is a blocker. Every requirement is MANDATORY unless tagged `[STRETCH]`.
4. The template's YAML front matter applies these labels on issue creation: `enhancement`, `spequa:in-flight`, `roadmap`. These labels are pre-created in this repo so template application never silently drops them.
5. `/15-pr-code-review-checklist` parses the `crp_contract:` block in the PR body. Keep the structure exact.

## Drift audit

To verify this repo's `spec-plan.md` is still in sync with the canonical file:

```bash
gh api "repos/SALT-Platform/salt-platform/contents/.github/ISSUE_TEMPLATE/spec-plan.md?ref=main" --jq '.content' | base64 -d | sha256sum
# Expected sha256 must match the value recorded above (or a superseding SHA logged in a follow-up commit).
```

If the sha256 no longer matches, open a chore PR to re-sync from the canonical file.

## Governance

- Owner: SPEQUA workflow (Shawn Owen, @equanaut-sha-w1)
- Change control: any body-level change to the template must land in `SALT-Platform/salt-platform` first, then be mirrored to every other repo via an org-wide chore sweep.
- Do not add repo-specific fields to the template body. Repo-specific values (branch prefix, spec directory, publish targets) are filled per-issue.
