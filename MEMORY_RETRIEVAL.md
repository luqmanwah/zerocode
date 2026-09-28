# ZEROCODE Memory Retrieval v0.1

Purpose: retrieve scoped prior knowledge before inventing a new interpretation.

## Trigger

Run scoped retrieval before inference when the input is:
- a short or ambiguous named phrase,
- an apparent recall cue,
- a request to remember/reuse/continue prior work,
- a term whose meaning may already exist in the active project's memory or test fixtures.

Do not run broad history retrieval for ordinary clear requests.

## Retrieval order

1. Current explicit conversation/task context.
2. Current project's canonical files and approved records.
3. Scope-specific memory/research records relevant to the active objective.
4. Synthetic test fixtures when the task is explicitly a memory-routing test.
5. Only after retrieval fails, use model inference and clearly label it as inference.

## Match rule

An exact or near-exact stored cue outranks a semantic guess.

If a stored record is found:
- return or use the stored meaning according to its status;
- preserve its scope/status;
- do not promote TEST, RESEARCH, HISTORICAL, or PROPOSAL records to canon.

If multiple records conflict:
- prefer newer explicit user decisions and stronger source authority;
- report material conflict instead of silently merging.

## Synthetic tests

For ZEROCODE memory-routing tests, scoped fixtures live in:

`tests/memory/records/`

When the user provides a cue that matches a fixture, retrieve the fixture before interpreting the phrase independently.

Synthetic fixtures are non-canonical and must not contaminate unrelated work.

## Failure behavior

If retrieval finds nothing:
- say no scoped record was found;
- then infer only if useful;
- do not claim the inference was remembered.
