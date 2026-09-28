# ZERO Adaptive Routing v0.1

ZERO routes by capability, not by brand/model identity.

## Prefer GPT Web when
- deep reasoning is the bottleneck
- research/synthesis/review is required
- legal/technical interpretation is required
- cross-source judgment is required

## Prefer Codex Desktop when
- filesystem/repository access is central
- code must be changed and tested
- batch document/file processing is needed
- deterministic local automation is better

## Prefer OpenClaw / Zeabur when
- work is long-running
- repeated collection/extraction is required
- monitoring or inbox processing is useful
- browser/research utility work can run independently

## Prefer deterministic tools/scripts when
- transformation is mechanical
- exact repeatability matters
- AI reasoning adds no value

## Spawn child agents when
- tasks can safely run in parallel
- specialized independent review materially improves quality
- isolation reduces context contamination

## Do not spawn when
- coordination cost exceeds task cost
- one worker can finish faster
- the task is trivial

## Drift rule

A new route may be attempted freely.
If it drifts from ZEROLINE or repeatedly fails, use LAST_KNOWN_GOOD for the current task.
