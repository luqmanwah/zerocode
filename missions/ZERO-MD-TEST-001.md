# ZERO-MD-TEST-001

ZEROID: ZERO-MD-TEST-001
TYPE: Synthetic document production test
ORIGIN: ChatGPT Web
TARGET: Codex $zero

## OBJECTIVE

Create one large but lightweight Markdown document that proves Codex can:
- resolve a ZeroID handoff from the canonical repository;
- follow structural constraints;
- produce a deterministic artifact;
- verify the artifact before completion;
- avoid unrelated context and optional infrastructure.

## HARDLINES

- Synthetic content only.
- No web research.
- No AOA/PYXIS context.
- No professional project context.
- No Zeabur.
- No OpenClaw.
- No InsForge.
- No child agents.
- Do not modify canonical ZEROCODE protocol files.
- Use local Codex execution only.

## REQUIRED OUTPUT

Create:

`outputs/zero-md-test/MERIDIAN_OPERATING_MANUAL.md`

The document title must be:

`MERIDIAN OPERATING MANUAL — Synthetic Coordination Protocol`

## DOCUMENT RULES

The output must:
- be valid Markdown;
- contain exactly 1 H1;
- contain exactly 10 H2 sections;
- contain exactly 3 Markdown tables;
- contain exactly 2 fenced code blocks;
- contain exactly 1 blockquote;
- contain exactly 1 checklist;
- contain no HTML;
- contain no external URL;
- contain no emoji.

Use these H2 sections exactly and in this order:

1. Purpose and Scope
2. Core Principles
3. Roles and Responsibilities
4. Work Intake Model
5. Priority and Conflict Rules
6. Execution Lifecycle
7. Verification and Acceptance
8. Exception Handling
9. Audit Trail and Records
10. Closure Checklist

## CONTENT MODEL

Define a fictional system named Meridian.

Meridian is not ZEROCODE, AOA, PYXIS, or any real production system.

Required roles:
- Coordinator
- Executor
- Reviewer
- Observer

Required priorities:
- P0 Critical
- P1 High
- P2 Normal
- P3 Low

Required lifecycle:

`INTAKE -> CLASSIFY -> ASSIGN -> EXECUTE -> VERIFY -> ACCEPT -> CLOSE`

Required statuses:
- NEW
- READY
- ACTIVE
- BLOCKED
- REVIEW
- CLOSED
- CANCELLED

Required verification gates:
- Objective Match
- Constraint Compliance
- Completeness
- Internal Consistency
- Output Usability

The phrase:

`recover locally before redesigning globally`

must appear exactly once.

## TABLE REQUIREMENTS

Table 1:
`Role | Primary Function | May Approve | May Execute | Escalation Duty`

Table 2:
`Priority | Meaning | Response Rule | May Interrupt`

Table 3:
`Gate | Question | Pass Condition | Failure Action`

## CODE BLOCK REQUIREMENTS

Code block 1:
a YAML Work Packet example using:
- Work ID: MW-024
- Objective: Produce a validated synthetic operational note.
- Priority: P2

Code block 2:
plain text lifecycle diagram containing only the required lifecycle.

## CHECKLIST

The final section must contain exactly:

- [ ] Objective completed
- [ ] Constraints preserved
- [ ] Required output exists
- [ ] Verification passed
- [ ] No unresolved blocker
- [ ] Audit record complete
- [ ] Final state assigned

No section may appear after the final checklist section.

## VERIFY

Before returning success, verify locally:

- H1 count = 1
- H2 count = 10
- table count = 3
- fenced code block count = 2
- blockquote count = 1
- checklist count = 1
- no HTML
- no URL
- no emoji
- required lifecycle unchanged
- required priorities unchanged
- required statuses unchanged
- required phrase appears exactly once

Repair the smallest failing part and re-run verification if needed.

## DONE CONDITION

Return only:

STATE: PASS | FAIL
ZEROID: ZERO-MD-TEST-001
FILE: <absolute path>
H1_COUNT:
H2_COUNT:
TABLE_COUNT:
CODE_BLOCK_COUNT:
BLOCKQUOTE_COUNT:
CHECKLIST_COUNT:
CONSISTENCY: PASS | FAIL
OPTIONAL_RUNTIME_USED: NO
