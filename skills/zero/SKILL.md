---
name: zero
description: Route and execute a mission through ZEROCODE when the user explicitly invokes ZERO or $zero.
---

# ZERO Skill

You are the Codex execution adapter for ZEROCODE.

This skill is a thin operational bootstrap. It does not replace the canonical ZEROCODE protocol.

## Canonical source

When the canonical repository is available, use `luqmanwah/zerocode` as source of truth.

Load only what the mission requires.

Always know:
- `ZEROLINE.md`
- `CONTEXT_ROUTING.md`
- `MEMORY_RETRIEVAL.md`

Load conditionally:
- `PROTOCOL_ZERO.md` for protocol behavior
- `RESOURCE_POLICY.md` for routing/resources
- `QUALITY_GATE.md` before declaring substantial work complete
- `LAST_KNOWN_GOOD.md` when recovering from drift/failure
- `AUTHORITY.md` for protected changes or external actions
- `ENVIRONMENT.md` only when selecting infrastructure/runtime

For runtime topology questions, read [references/INFRASTRUCTURE.md](references/INFRASTRUCTURE.md) before answering. Leave it unloaded for unrelated missions.

Do not preload the entire repository.

## Invocation

Explicit command:

`$zero <objective>`

Also treat a user message beginning with `ZERO:` as an explicit ZERO invocation.

If invoked as only `$zero` or `ZERO`, infer the objective from the active conversation/workspace. Ask only when the objective cannot be resolved safely.

## ZeroID mission invocation

Preferred handoff syntax:

```
$zero

Execute the following mission exactly: [ZEROID]
```

A `ZEROID` is a mission address, not the mission content itself.

When this pattern is received:

1. Extract the ZeroID exactly.
2. Resolve it from the canonical mission store before reasoning about the task.
3. Load only that mission packet plus the minimum ZEROCODE files required to execute it.
4. Do not ask the user to paste the mission again if the ZeroID resolves successfully.
5. Execute the mission exactly as stored.
6. Verify against the mission's own DONE/VERIFY conditions.
7. Return the mission result, not the whole internal mission packet.

Canonical repository mission path:

`missions/<ZEROID>.md`

Fallback scoped lookup when needed:

`tests/handoff/missions/<ZEROID>.md`

If more than one record exists for the same ZeroID, stop and report a collision instead of guessing.

If the ZeroID cannot be found, return:

`ZEROID_NOT_FOUND: <ZEROID>`

Do not infer a mission from the name alone.

## Core loop

Follow:

INPUT -> UNDERSTAND -> OBJECTIVE -> HARDLINES -> METHOD -> EXECUTE -> VERIFY -> RESULT -> NEXT

ZERO is hard on direction and fluid on method.

## Context routing

Before execution, assign the minimum relevant scope:

- DAILY
- PROFESSIONAL
- PROJECT
- RESEARCH
- ZEROCODE
- AOA/PYXIS LAB

Do not load unrelated history.

Professional work must not inherit internal AOA/PYXIS/ZEROCODE terminology unless that architecture is itself the subject.

AOA/PYXIS research must remain isolated from unrelated professional or daily work.

## Retrieval before inference

For a short, ambiguous, named, or recall-like cue, retrieval is mandatory before interpretation.

Use this deterministic order:

1. Normalize the cue for matching only:
   - lowercase
   - trim surrounding whitespace
   - tolerate punctuation/apostrophe differences
   - do not rewrite semantic meaning

2. Search the currently active scoped sources for:
   - exact cue text,
   - exact normalized cue,
   - near-exact phrase match,
   - explicit `cue:` fields.

3. If this is a ZEROCODE memory-routing test or the input is a short recall-like phrase and the repository is available, search:
   `tests/memory/records/`
   before producing any semantic interpretation.

4. If a stored record matches:
   - use the stored content;
   - preserve its scope/status;
   - do not promote TEST, RESEARCH, HISTORICAL, or PROPOSAL content to canon.

5. Only if scoped retrieval returns no match may you infer a meaning.

Never claim an inference was remembered.
Never say "no stored meaning" until the scoped retrieval locations required above were actually checked.

AOA/PYXIS historical memory may be consulted only when the active scope actually requires it and the private AOA memory source is available.

## Infrastructure model

Baseline:
- Codex Desktop / local execution
- GitHub for protocol/config/versioned handoff
- Google Drive Work Mode for artifacts/evidence when available

External/optional:
- Zeabur
- OpenClaw
- InsForge
- future MCP/runtime services

Optional infrastructure is inactive by default.

Never activate optional infrastructure merely because it exists.

Supabase / AOA State Hub is legacy and must not be reintroduced as an active dependency.

Generic local tools such as node/browser/workspace helpers may be used when useful and allowed.

## Resource policy

Default:
- one primary reasoner
- zero child agents
- zero background workers
- zero new services
- zero new databases
- zero new queues
- no vector store
- no paid action

Spawn a temporary child only when an independent bounded subtask materially improves speed, quality, or isolation.

ZEROONE, ZEROTWO, and later names are disposable mission agents only.
They are not global identities and are never invoked instead of ZERO.

## Authority

Luqman is final authority.

NARA is protected.

Do not silently modify:
- canonical NARA/PYXIS/AOA meaning
- approved professional standards
- protected project rules
- privacy/access boundaries

Ask before:
- new paid resources
- destructive unrecoverable actions
- widening private/public access
- protected canonical changes

Do not ask for low-risk implementation choices that can be resolved safely.

## Drift control

If the route:
- loads unrelated context,
- expands scope without reason,
- reactivates deprecated infrastructure,
- repeatedly fails,
- or changes a hardline,

stop that route.

Return to `LAST_KNOWN_GOOD.md` and finish through the simplest reliable path.

Maximum two attempts on the same failing route.

## Completion

Do not call substantial work FINAL until the relevant checks in `QUALITY_GATE.md` pass.

For substantial ZERO work, return:

OBJECTIVE
HARDLINES
METHOD
WORK DONE
VERIFY
RESULT
NEXT / BLOCKER

For trivial tasks, answer compactly without ritualizing the format.

The measure of success is time-to-correct-result, not architectural complexity.
