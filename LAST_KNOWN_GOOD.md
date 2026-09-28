# LAST KNOWN GOOD — ZEROCODE v0.3

Status: VERIFIED-LOCAL

Verified: 2026-09-28

## Stable behavioral route

READ -> UNDERSTAND -> OBJECTIVE -> HARDLINES -> METHOD -> EXECUTE -> VERIFY -> RESULT -> NEXT

## Verified minimum environment

- GPT Web: reasoning, research, synthesis, review, planning, final QA.
- Codex Desktop: execution, coding, local automation, file/repository work.
- Google Drive Work Mode: artifact/evidence workspace.
- GitHub: protocol/config/code/scoped archive.

## Verified Codex cutover

PASS:
- legacy Supabase/State-Hub MCP routes removed from active user Codex config
- legacy AOA prompt hook removed
- global ~/.codex/AGENTS.md replaced with small ZEROCODE bootstrap
- ChatGPT Work Mode custom instructions updated and persisted after reload
- ordinary-task context isolation test passed
- ZERO invocation test passed
- timestamped local backup created before destructive config cleanup
- no ZEROCODE repository files were modified by the cutover
- optional Zeabur and InsForge adapters remained disabled

## Residual non-blockers

- Legacy environment-variable names may still exist locally even though active Codex routes no longer reference them.
- Repository Developer Docs MCP is declared project-level; user-level MCP listing did not prove runtime activation.

These residuals do not invalidate the current minimum route.

## Optional, not required

- OpenClaw
- Zeabur
- InsForge
- future runtimes/backends

The stable route must remain functional without optional infrastructure.

## Failure recovery

If a new model/tool/workflow loses the objective, violates a hardline, changes an approved output standard without authority, or repeatedly fails:

1. Stop the experimental route.
2. Return to the verified minimum environment.
3. Use the simplest previously successful method.
4. Finish the work.
5. Record only the operational lesson that matters.

This file records a proven fallback route, not immutable infrastructure.


## Verified ZERO Codex Skill

Canonical skill:
- repository: `luqmanwah/zerocode`
- path: `skills/zero/SKILL.md`
- explicit command: `$zero`
- verified remote main: `e8cdcd65eff74fa170c9cf0f07e46bd3db87c8f0`
- installed location: `C:\Users\Luqman\.codex\skills\zero`

Verification:
- discovery: PASS
- ZERO invocation: PASS
- scoped memory retrieval: PASS
- ordinary-task isolation: PASS
- infrastructure lazy-load: PASS
- optional runtime activation: NO
- legacy route reintroduction: NO
- installed skill sync with canonical source: PASS

Status: READY


## Verified canonical skill synchronization

Status: READY

- canonical skill path (local): `C:\Users\Luqman\Documents\Codex\2026-09-28\zero-read-and-execute-docs-codex\work\zerocode\skills\zero`
- installed Codex skill: `C:\Users\Luqman\.codex\skills\zero`
- link type: Windows Junction
- installed skill resolves directly to canonical repository skill
- skill discovery: PASS
- canonical sync: PASS
- memory retrieval: PASS
- manual sync action required: NONE

Operational consequence:
`git pull` on the local ZEROCODE repository updates the ZERO skill seen by Codex without copying `SKILL.md`.

The repository remains the source of truth.
