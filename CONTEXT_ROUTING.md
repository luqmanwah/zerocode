# ZEROCODE Context Routing v0.1

Purpose: preserve all useful knowledge while preventing unrelated context from contaminating the active task.

## Core principle

Do not delete knowledge merely because it is not relevant to the current task.
Store/retain it in the correct context scope and load it only when needed.

Repeated discussion does not make a context globally active.

## Context scopes

### 1. DAILY
For ordinary one-off questions.
Load:
- current user request
- only directly relevant preferences/context

Do not automatically load AOA, PYXIS, professional projects, or old research.

### 2. PROFESSIONAL
For legal, mining, environment, permitting, company, engineering, document, GIS, or other professional work.
Load:
- active domain
- active project/entity
- approved professional standards
- relevant evidence/source
- relevant prior decisions

Do not inject AOA/PYXIS/ZEROCODE internal terminology unless it is itself the subject.

### 3. PROJECT
For an existing named project.
Load:
- project-specific context
- project decisions
- active artifacts
- dependencies
- current status

Do not load unrelated projects.

### 4. RESEARCH
For exploratory research that may later become useful.
Preserve:
- hypotheses
- sources
- experiments
- unresolved questions
- comparative notes

Research is not canon by default.
Research may later be promoted into a project or canonical rule after validation.

### 5. ZEROCODE
For ZERO/ZEROLINE/runtime/orchestration work.
Load:
- ZEROLINE
- Protocol ZERO
- authority
- resource policy
- quality gate
- current mission
- only required adapters/runtime context

Do not load domain-specific project history unless the current mission explicitly requires it.

### 6. AOA / PYXIS LAB
For NARA, PYXIS, SMTYX, AOA, Genesis, agent architecture, local AI, world-state, node-centric architecture, or related research.
Load:
- only relevant AOA/PYXIS research
- current canonical decisions
- historical experiments when useful
- unresolved architecture questions

AOA/PYXIS research remains valuable and must not be discarded.
It is simply isolated from unrelated work.

## Promotion rule

Information may move between scopes only when justified.

Examples:
- RESEARCH -> PROJECT when research becomes operational project input.
- PROJECT -> PROFESSIONAL STANDARD when explicitly approved and reusable.
- RESEARCH -> AOA/PYXIS CANON only after validation and Luqman approval.
- ZEROCODE lesson -> LAST_KNOWN_GOOD only after proven success.

## Context precedence

1. Current explicit user instruction
2. Current source/file/evidence
3. Approved scope-specific rule
4. Relevant prior decision
5. Relevant research
6. General memory
7. Model inference

## Drift rule

If unrelated context appears in reasoning or output:
1. identify the wrong scope,
2. remove that context from the active pack,
3. restore the correct task scope,
4. continue without deleting the underlying knowledge.

The goal is context separation, not knowledge deletion.


## Retrieval-before-inference rule

When a short or ambiguous cue may refer to previously stored project knowledge, memory, or a synthetic routing fixture:
1. retrieve from the active scope first,
2. prefer exact/near-exact stored cues over semantic guessing,
3. preserve the record's status,
4. infer only after scoped retrieval fails.

See `MEMORY_RETRIEVAL.md`.
