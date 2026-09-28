# ZEROCODE Resource Policy v0.1

Purpose: prevent wasted compute, runaway agents, unnecessary services, and noisy output.

## Default mode

ZEROCODE starts in MINIMAL mode.

- one primary reasoner
- zero child agents unless clearly justified
- zero background workers unless the task is long-running
- zero new services unless an existing bottleneck requires one
- zero vector database unless retrieval quality cannot be achieved otherwise
- zero queue system unless concurrent work actually exists
- zero duplicate storage
- zero paid service activation without Luqman approval

## Agent budget

Default:
- ZERO only

Allow one child agent when:
- the subtask is independent,
- the expected gain is material,
- coordination cost is lower than task cost.

Allow multiple child agents only when:
- tasks are safely parallel,
- each mission is bounded,
- outputs are independently verifiable.

Do not create swarm-style workers by default.

## Retry budget

- deterministic tool/script: up to 2 corrective attempts
- model/agent route: up to 2 attempts
- after 2 failed attempts, stop the route and use LAST_KNOWN_GOOD or escalate the blocker

Do not loop.

## Context budget

Load only:
1. active objective,
2. required hardlines,
3. relevant artifact/source,
4. required dependencies.

Do not load full project history unless the task genuinely requires it.

## Service budget

Core baseline surfaces:
- GPT Web
- Codex Desktop
- Google Drive Work Mode
- GitHub

Optional runtimes/adapters are inactive by default:
- OpenClaw
- Zeabur
- InsForge
- future external services

Activate an optional runtime only when a concrete active-task bottleneck justifies it.
The existence of a service does not make it part of the active route.

## Cost rule

If an action can create a new charge, paid API usage, paid integration, paid resource, or irreversible financial commitment:
STOP and ask Luqman.

## Success criterion

Architecture is successful only when it reduces time-to-correct-result for real work.
