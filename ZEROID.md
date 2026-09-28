# ZeroID Mission Addressing v0.1

## Purpose

A ZeroID is the canonical address of a mission packet.

The user-facing invocation stays minimal:

```
$zero

Execute the following mission exactly: [ZEROID]
```

## Canonical storage

```
missions/<ZEROID>.md
```

Example:

```
missions/ZERO-MD-TEST-001.md
```

## Required mission fields

Every mission should define at minimum:

- ZEROID
- OBJECTIVE
- HARDLINES
- INPUTS
- REQUIRED OUTPUT
- VERIFY
- DONE CONDITION

## Resolution rule

ZERO resolves the ID first, then executes.

It must never guess mission content from the ID string.

## Collision rule

One ZeroID must map to one active canonical mission.

Duplicate active mission IDs are invalid.

## Persistence

A completed mission may remain in the repository as history or be moved to an archive later.
Its ZeroID must not be silently reassigned to unrelated work.
