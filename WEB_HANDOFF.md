# ZEROCODE Web-to-Codex Handoff v0.1

## Purpose

ChatGPT Web writes canonical mission packets into the ZEROCODE repository.
Codex does not need the full prompt pasted into chat.

The user-facing command is only:

```
$zero

Execute the following mission exactly: [ZEROID]
```

## Responsibilities

### ChatGPT Web
- understand the user's objective;
- compile a bounded mission packet;
- assign a unique ZeroID;
- upload it to the canonical ZEROCODE mission store;
- preserve hardlines, inputs, verification rules, and done condition;
- avoid embedding unrelated context.

### Codex / $zero
- extract the ZeroID;
- pull/sync the canonical ZEROCODE repository when needed;
- resolve `missions/<ZEROID>.md`;
- execute the mission exactly;
- use minimum context/resources;
- verify the result;
- return the mission result.

## Canonical mission store

```
missions/<ZEROID>.md
```

## Handoff invariant

The mission file is the authoritative handoff payload.

The chat command is only an address to that payload.

Codex must not ask the user to repaste the mission if the ZeroID resolves successfully.

## Failure states

- `ZEROID_NOT_FOUND`
- `ZEROID_COLLISION`
- `MISSION_BLOCKED`
- `MISSION_FAILED_VERIFICATION`

## Security and scope

Mission files must not contain secrets.
Professional/private source material should be referenced from the approved private artifact source rather than copied into the public ZEROCODE repository.

ZEROCODE protocol files remain separate from project evidence and AOA/PYXIS scoped memory.
