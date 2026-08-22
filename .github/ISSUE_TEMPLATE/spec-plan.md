---
name: Spec Plan
about: "Spequa Roadmap Spec Plan a feature must satisfy end-to-end before a PR may open for review, merge, and production deploy. Every unchecked box is a blocker."
title: "[Spec-NNN] <kebab-case-title>"
labels: enhancement, spequa:in-flight, roadmap
assignees: equanaut-sha-w1
---
Requirements of Success
SALT SPEQUA — Spec Plan Custom GitHub Issue Template (v1.0)

Every roadmap feature or enhancement runs through this template before a Pull Request may be opened to merge and deploy to production. Every unchecked box is a blocker. Every requirement is MANDATORY unless explicitly tagged [STRETCH]. Governed by the CRP Authoring Rules, the 12 CRP Package Gates, and the CRP-14/CRP-15 Evaluation Protocol.

Canonical GitHub file: .github/ISSUE_TEMPLATE/spec-plan.md · PR #1596

Template front matter (GitHub YAML) — must match the live front matter at the top of this file. Keep `about` under 200 characters: GitHub silently drops templates whose `about` exceeds ~200 chars from the New Issue chooser.

---
name: Spec Plan
about: "Spequa Roadmap Spec Plan a feature must satisfy end-to-end before a PR may open for review, merge, and production deploy. Every unchecked box is a blocker."
title: "[Spec-NNN] <kebab-case-title>"
labels: enhancement, spequa:in-flight, roadmap
assignees: equanaut-sha-w1
---

0. Identity & Coordinates

Field

Value

Spec ID

NNN-<kebab-case-title>

Spec directory

specs/NNN-<kebab-case-title>/

Feature branch

NNN-<kebab-case-title>

Roadmap lane

<lane>

Criticality

Customer-facing / Funds-impacting / Compliance-critical / Internal only

Maturity target

L2 (Internal) · L3 (Funds/Compliance)

Accountable owner

<@github-handle> — role

Technical owner

<@github-handle>

Business owner

<@github-handle>

Independent evaluator

<@github-handle> (NOT the implementer)

Backup evaluator

<@github-handle>

Confluence CRP page

<URL>

Jira epic

<KEY>

Originating PSP

PSP-<id> v<n> — VALIDATED

Originating PROBLEMO

PROBLEMO-<id> v<n>

Originating IDEAS

IDEAS-<id> v<n>

PSP validation date

YYYY-MM-DD

CRP freeze version

v<x.y> — freeze date YYYY-MM-DD

Perplexity session

<URL>

SPEQUA SDD KIT index

https://saltlending.atlassian.net/wiki/spaces/~5e20a950a531f30ca384df3f/pages/3636559876

Every field above is filled. No <placeholder> remains.

Criticality classification recorded and applied to gate thresholds.

Accountable owner is a named person plus a backup — never a team.

Independent evaluator is not the implementer and independence is attested in writing.

1. PSP Admission — Upstream Contract (Gate G1)

Source: CRP Authoring Rules · Required Input Contract (CRP-00). Do not draft this Spec Plan until every input below is present or explicitly listed under MISSING-INPUT.

1.1 PSP records

PROBLEMO id, version, status, authoritative link recorded

IDEAS Solution id, version, status, authoritative link recorded

PSP id, version, VALIDATED status, authoritative link recorded

Canonical problem statement pasted verbatim (root-cause tagged)

Canonical solution statement pasted verbatim

Evidence supporting existence and impact of the problem attached

Evidence supporting feasibility and intended effect of the solution attached

Explicit pairing rationale: why this solution resolves this problem

1.2 Scope & boundary records

In-scope systems, data, processes, populations, environments, jurisdictions listed

Out-of-scope items listed with rationale

Known constraints listed: policy, regulatory, contractual, technical, budgetary, security

Known upstream and downstream dependencies listed

Assumptions from PROBLEMO and IDEAS listed and each flagged ASSUMPTION

1.3 Measurement records

Current-state metrics with source system, query/method, and measurement date

Historical trend for rate- or volume-based problems

Known instrumentation gaps listed

Data-quality caveats affecting any metric listed

1.4 Governance records

Applicable control frameworks and retention obligations recorded

Approval authority for CRP freeze and any later change request recorded

1.5 MISSING-INPUT register

MI-ID

What is missing

Why required

Owner

Blocks

MI-001









Zero mandatory-blocking MI-### items remain open. Non-blocking MI-### items are flagged as explicit conditional requirements resolved before first evaluation run.

2. Problem Truth & Falsifiable Claims (Gate G2)

Format for every claim: <subject> <observable condition> <magnitude> <observation point>. Reject prose. Reject unquantified adjectives. Reject activity statements.

PC-ID

Type (root/symptom)

Falsifiable claim

Magnitude today

Evidence link

Confidence

In scope?

PC-001













Every claim is singular, present-tense, magnitude-bearing, observable at a named point

Every claim is evidenced OR explicitly marked ASSUMPTION

Every root-cause claim tagged; symptom-only coverage is a G3 fail

3. Overview & User Stories

3.1 Overview

1–3 paragraphs: what is being built and why it matters. Business/user value in one sentence.

3.2 User Stories

US-ID

As

I want

So that

US-1







Every US-ID resolves to at least one AC and at least one Success Requirement (SR)

4. Success Requirements (Gate G5) — MANDATORY / STRETCH

Source: CRP Authoring Rules — CRP-04. Format: <entity> <end-state condition> <quantified bound> <observation window> <verification actor>. One requirement, one testable assertion. Split anything containing “and” that hides two assertions.

SR-ID

Class

End-state requirement

Verification type

Verification actor (non-implementer)

Traces to PC/US

SR-001

MANDATORY



automated / manual-observed / attested / third-party





SR-S01

STRETCH









Every SR is end-state phrased (not "build X" — "X produces Y under Z")

Every SR is implementation-neutral (two reasonable architectures could satisfy it)

Every SR is classed MANDATORY or STRETCH

STRETCH SRs cannot delay activation or runtime certification unless promoted through approved change control BEFORE implementation begins

Every SR names a verification actor who is NOT the implementer

No vague terms: working, optimized, robust, seamless, intelligent, timely, high quality, as expected, best effort

5. Baselines (Gate G4)

Every metric that feeds a benchmark must have a dated, sourced, instrument-produced current value with sample window and noise band. Invented values fail G4.

Metric

Source system / instrument id

Query or dashboard id

Measurement date

Current value

Sample window

Noise band















Zero invented values. Zero undated baselines. Zero unsourced baselines.

Where instrumentation does not exist yet, an instrumentation requirement is filed and referenced.

6. Benchmarks (Gate G6) — All Nine Fields

A benchmark is incomplete unless all nine fields are present. Point measurements are not admissible for availability, error-rate, latency, or backlog metrics.

BM-ID

Metric

Method

Instrument id

Baseline

Target (inequality)

Sample window + min size

Pass band

Fail band

Stability condition

BM-001



















Every SR maps to ≥ 1 BM with all nine fields present

Every target stated as 100% or 0 defines the counting rule for exceptions

Method is executable by a stranger from the text alone (exact query, saved dashboard id, JQL, script path, or connector call)

7. Acceptance Criteria & Checklist (Gates G7 & G8)

Source: CRP-06. Binary. No partial credit inside a check. Boundary case explicitly assigned to PASS or FAIL. INVALID_EVIDENCE and NOT_TESTED score zero and block merge.

AC-ID

Traces to SR

Pass rule (unambiguous)

Boundary case →

Weight

Verification actor

Evidence artifact + storage + signer + retention

AC-001

SR-001



PASS / FAIL







Weights total exactly 100 (not 97, not 104) after CRP-08 re-weighting

Mandatory checks marked and independent of weighted arithmetic

Every check names artifact type, producing instrument, storage location, signer, retention

Redaction rules stated for any check whose evidence could contain regulated or customer data

No check whose only evidence is "confirm with the team"

8. Falsification Register (Gate G9) — Anti-Gaming

For every identified gaming path, one or more counter-checks must be present and weighted into the scorecard.

XC-ID

Gaming path defeated

Counter-check

Type

Weighted?

XC-001





counter / negative / regression / survivorship / silent-failure



Negative tests present (system rejects/alerts on bad input — silence = FAIL)

Non-regression guardrails: frozen list of previously-working behaviors that must remain intact

Survivorship checks: outcome holds unattended across the full observation window

Silent-failure detection: stalled/stopped component raises alert within stated detection time

No check can be passed by turning off an alert

9. Test Protocol (CRP-06 / CRP-07)

SR-ID / AC-ID

Environment

Why env is valid evidence

Test data + selection rule

Execution actor

Repeatability proof

Negative tests

Regression guardrails

Survivorship window



















Environment named for every test and justified as valid evidence

Sample selection rule prevents selection bias

Execution actor is never the implementer for mandatory checks

Test must produce the same verdict on re-run against the same state

10. Evaluation Protocol (CRP-14 / CRP-15)

Canonical CRP page resolves and shows a frozen version

Package version to be evaluated recorded before scoring begins

Evaluator independence attested in writing

Dual control assigned where criticality requires (funds / compliance)

Evaluator has read access to every instrument named in the evidence contract

Evidence index page for this run created and empty at run start

Prior run's gap tasks retrieved so verdict changes can be attributed

Open change requests against the package identified

Verdict decision tree — every AC follows exactly: env valid? → evidence admissible? → observed value satisfies pass rule? → held for full window per stability condition? → boundary case explicitly assigned? → PASS. Any no yields NOT_TESTED, INVALID_EVIDENCE, or FAIL.

11. Spequa Constitution (Nine Articles)

Library-First — existing libraries preferred; new build is justified

Test-First — every requirement verifiable via automated tests

Simplicity — simplest solution that fully satisfies requirements

Anti-Abstraction — no premature abstractions

Integration-First — integration tests prioritized over unit tests

Single Source of Truth — spec.md is authoritative

Traceability — every AC independently verifiable

Scope Discipline — if it's not in the spec, it doesn't get built

Iterative — unknowns flagged rather than guessed

12. Plan Artifacts (/8-plan) — Required Files Before PR

All artifacts live under specs/NNN-<kebab-case-title>/.

spec.md — status SPECIFIED, all sections filled, ## Clarifications present

plan.md — Phase 0 progress tracking complete, no ERROR states, absolute paths

research.md — validated research with citations (Phase 0)

data-model.md — entities and relationships (Phase 1)

contracts/ — API boundary and interface definitions (Phase 1)

quickstart.md — how a stranger runs and verifies this (Phase 1)

tasks.md — ordered, executable, parallelism-marked (Phase 2, from /9-tasks)

analysis-report.md — from /10-analyze

checklist.md — from /spequa-07-00-checklist

clarify-N.md — resolved clarifications from /7-clarify

closure-report.md — SC/FR coverage table (populated at /16-close)

scorecard/<timestamp>.yml — Spequa closure scorecard

13. Task List (/9-tasks) — File Creation Order

Tasks MUST follow this sequence. No source-file task may run before its test-file tasks.

Contracts First

Contract Tests

Integration Tests

E2E Tests

Unit Tests

Source Files

Every AC from spec.md maps to ≥ 1 task in tasks.md

Every module from plan.md has associated tasks

Every contract has a corresponding contract-test task

No circular dependencies in task ordering

Traceability matrix AC-ID → Task(s) → Status complete

Parallelizable tasks marked [P]

Every task maps to a Jira ticket in the correct project

14. PSP Traceability Matrix (Gate G11)

PC-ID

RC-ID

SR-ID

AC-ID

BM-ID

Task-ID

Evidence artifact

Verdict

















Every PC traces forward to ≥ 1 AC (or explicit DEFERRED with owning ticket)

Every AC traces back to ≥ 1 PC or RC

Zero orphans in either direction

Every MISSING-INPUT listed, not silently filled

15. Validator Independence (Gate G10)

Independent evaluator named

Independence test recorded (attested in writing on the CRP page)

Read access provisioned to every instrument named in the evidence contract

Dual control assigned where funds- or compliance-impacting

Escalation and tie-break authority written into the CRP

16. Governance & Closure Terms (Gate G12)

All eight closure terms present and PSP-specific

Change-control procedure stated (versioned CR, requester, rationale, affected SR ids, impact on the 100% Definition, approver, Jira key)

Freeze mechanics defined at CRP-12

Publication targets named (Confluence page(s), Jira epic, GitHub spec directory, Slack channel)

Recognition governance handoff described as evidence-only (this workflow never calculates or authorizes compensation)

Statement of what happens when the score is below 100 (route back into gap-remediation loop)

17. 12 CRP Package Gates — Pre-Freeze Scorecard (CRP-11)

All twelve must PASS. There is no weighted pass for the gates themselves.

Gate

Name

Severity

Verdict

G1

PSP admission integrity

CRITICAL

PASS / FAIL

G2

Problem claim falsifiability

CRITICAL

PASS / FAIL

G3

Coverage completeness

CRITICAL

PASS / FAIL

G4

Baseline validity

CRITICAL

PASS / FAIL

G5

Requirement quality

CRITICAL

PASS / FAIL

G6

Benchmark completeness

CRITICAL

PASS / FAIL

G7

Scorecard integrity

CRITICAL

PASS / FAIL

G8

Evidence contract sufficiency

HIGH

PASS / FAIL

G9

Falsification coverage

CRITICAL

PASS / FAIL

G10

Validator independence

CRITICAL

PASS / FAIL

G11

Traceability closure

HIGH

PASS / FAIL

G12

Governance & closure terms

HIGH

PASS / FAIL

12/12 gates PASS

Zero CRITICAL failures anywhere

SALT 28-check documentation grade ≥ B (≥ 80%)

On-call readability test passes

Bidirectional Confluence ↔ Jira linking resolves

Maturity ≥ L2 (L3 for funds/compliance)

18. Verbatim 100% Definition (adapt only the PSP id)

This PSP reaches VALIDATED_100 only when: every mandatory requirement is PASS; every required outcome metric reached its frozen target within tolerance; every target was sustained for its full observation period; every in-scope problem condition is covered by at least one validated requirement; every material solution promise is covered by at least one validated requirement; no critical or high-severity unresolved defect, blocker, control failure, or evidence gap remains; no frozen regression guardrail failed; every required test executed in its specified environment; every required evidence artifact exists, is current, is attributable, and is reproducible or independently inspectable; the independent evaluator signed the validation result; the implementation, evidence, validation record, and closure record are published to their authoritative sources of truth; all required operational ownership, monitoring, alerting, recovery, documentation, and maintenance controls are active; no requirement was waived, reinterpreted, or weakened without an approved and versioned change request; and the final score is exactly 100 without rounding.

This block is pasted verbatim into specs/NNN-<kebab-case-title>/spec.md (Gate G7 requirement).

19. Pre-PR Implementation Gates

19.1 Code & CI

Feature branch NNN-<kebab-case-title> created off main

Every task in tasks.md closed with an artifact reference

ci.yml green — lint (ruff / flake8) + tests (pytest)

ci-cd.yml green — staging deploy succeeds without errors

No new lint warnings or suppressions without justification

Python 3.11 compatibility confirmed

No secrets, API keys, passwords, or credentials committed (.env.example only)

No eval(), exec(), unsafe os.system(), or unparameterized SQL

Auth-protected routes verified behind settings_authenticated / @login_required

CSRF protections intact on form endpoints

OAuth scopes not broadened without justification

19.2 Test coverage & quality

New/modified backend logic has corresponding tests in tests/

Existing tests are not deleted or weakened without explanation

Edge cases covered: empty data, missing env vars, unauthenticated access

make test run locally — no regressions; coverage delta reported

Cap-table math, grant allocations, and scenario math numerically verified

Data-provenance labels preserved (Carta vs Google Sheets tracking intact)

JSON schema changes are backward-compatible or migration path documented

Audit log entries emitted for all data-mutating operations

19.3 Frontend & UI/UX (if applicable)

Templates use the DRY base pattern; no inline styles duplicating salt-brand.css

WCAG AA contrast compliance maintained (per STYLE_GUIDE_HARD_RULES.md)

Responsive layout not broken (sidebar resize, metric card scaling)

Screenshots attached in PR body

Plotly charts render correctly with new data shapes

No JavaScript console errors on affected pages

19.4 API contract & backend logic

Endpoint signatures not changed without versioning / migration note

Response JSON schemas consistent with frontend expectations

Proper HTTP status codes returned (no bare exceptions)

Google Sheets client and connection manager handle timeouts gracefully

No blocking I/O on the request thread without timeout

19.5 Configuration & deployment

requirements.txt updated with pinned versions if new deps added

.env.example updated for any new env vars

Dockerfile, Procfile, railway.json not broken

Railway staging-env deployment tested and functional

No hardcoded localhost, ports, or file paths that break in production

19.6 Code quality & maintainability

No 1000+ line single-commit PRs without logical grouping

Functions/classes have docstrings for non-trivial logic

No dead code, commented-out blocks, or leftover print() debug

File organization follows existing patterns

Import structure clean; no circular imports introduced

19.7 Documentation & changelog

README.md updated for new features / endpoints / user-facing changes

Spec evidence committed to specs/NNN-<kebab-case-title>/

CONTRIBUTING.md updated if dev workflow changes

Migration notes in MIGRATION_GUIDE.md for breaking changes

Inline comments explain why, not just what, for complex financial logic

20. PR Handoff Block — crp_contract (Consumed by /15 Auto-Review)

crp_contract:
  psp_id: PSP-<id>
  crp_version: v<x.y>
  crp_freeze_date: YYYY-MM-DD
  spec_id: NNN-<kebab-case-title>
  branch: NNN-<kebab-case-title>
  criticality: internal | customer-facing | funds-impacting | compliance-critical
  maturity_target: L2 | L3
  gates_passed:
    G1: PASS
    G2: PASS
    G3: PASS
    G4: PASS
    G5: PASS
    G6: PASS
    G7: PASS
    G8: PASS
    G9: PASS
    G10: PASS
    G11: PASS
    G12: PASS
  salt_28_check_grade: B|A
  onCall_readability: PASS
  mandatory_srs_pass: <count>/<total>
  weighted_score: 100
  invalid_evidence_count: 0
  not_tested_count: 0
  open_regression_failures: 0
  open_counter_checks: 0
  independent_evaluator: <@github-handle>
  independence_attested: true
  evidence_index_page: <confluence url>
  jira_epic: <KEY>
  publish_targets:
    - confluence_page: <url>
    - jira_epic: <KEY>
    - github_spec_dir: specs/NNN-<kebab-case-title>/
    - slack_channel: <#channel>
  hlb_flags: []
  change_requests_open: 0

crp_contract block completed and pasted into the PR body

agent-autonomy label applied if no HLB flags; otherwise human-loop-break applied

21. Anti-Patterns That Fail This Template (Auto-Reject)

Any of these fails the template and blocks the PR.

"The workflow runs successfully" — unfalsifiable

"Deploy the new pipeline" — activity, not outcome

"Reduce errors significantly" — unquantified adjective

"Owner: the platform team" — must be named person + backup

"Validated by the implementing engineer" — fails independence

"Measured by spot check" — sample selection rule missing

"Success = stakeholder satisfaction" — no attester, artifact, or threshold

"Target: best effort" — no target

Weights totalling 97 or 104 — scorecard arithmetic invalid

Green scorecard with an open NOT_TESTED mandatory check

Symptom-only coverage that leaves root-cause claims uncovered

Baseline stated as "roughly X" with no query or date

Point-in-time target with no observation window

Evidence: "confirm with the team"

22. Standing Learnings Folded In (CRP Pipeline Run Learnings)

Each was a real failure on a real run. The template already prevents each one.

L-001 Symptom-only coverage → §2 root/symptom tag required; Gate G3 fails uncovered root causes

L-002 Targets without windows → §6 requires nine benchmark fields including window + stability

L-003 Green scorecard, live problem → §8 falsification counter-checks are weighted

L-004 Self-graded work → §15 independence test + written attestation

L-005 Gaps that are notes, not tasks → §10 gap template requires numeric target delta + Jira key

L-006 Moving targets → §16 change-control procedure; freeze at v1.0

L-007 Invented baselines → §5 MISSING-INPUT register; G4 fails undated baselines

L-008 Instrument doesn’t exist at eval time → §6 method executable by a stranger; missing instrument = INVALID_EVIDENCE

23. Publish Targets (on merge to main)

Confluence CRP page updated with Score History entry (this run's verdict)

Jira epic transitioned; every gap task linked

specs/NNN-<kebab-case-title>/ closure report and scorecard committed

Slack #<channel> posted with the closure summary and evidence links

Personal Confluence space page created with Smart Links to the originating session URL, spec directory, and PR

Roadmap updated to reflect DONE and the next approved item released

24. Reviewer & Merge Rules

Reviewer follows /15-pr-code-review-checklist Auto-Review Mode: all 10 gates evaluated as machine-evaluable predicates. If all pass → gh pr review --approve and squash-merge. Human clicks the merge button; no auto-merge.

If any gate fails → changes-requested with per-gate JSON detail; PR routed to repair ladder (retry CI, auto-fix lint, invoke /7-clarify autonomously). Pipeline continues to next PR regardless.

Merge command: Squash and Merge. Never Rebase or Create-Merge-Commit for spec branches.

Related links

SPEQUA Commands — Link Index (SDD KIT)

CRP Authoring Rules and Required Input Contract

The 12 CRP Package Gates

CRP Evaluation Protocol (CRP-14 / CRP-15)

CRP Pipeline Run Learnings

Project Configuration — wf-write-success-requirements

Product Ops — PSP Completion Requirements & Benchmarks Agentic Pipeline

/8-plan

/9-tasks

/15-pr-code-review-checklist

PR #1596 — this template’s PR
