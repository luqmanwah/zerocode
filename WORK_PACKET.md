# ZERO WORK PACKET v0.1

A work packet is intentionally small.

```yaml
mission_id: Z-...
objective: ...
hardlines:
  - ...
inputs:
  - ...
preferred_result: ...
runtime_hint: auto
status: ready
```

## Rules

- ZERO owns decomposition.
- Child agents receive only mission-relevant context.
- `runtime_hint: auto` is default.
- Do not force an LLM when a deterministic tool is better.
- Do not force cloud execution when local execution is better.
- Do not preserve a worker after its mission is complete unless persistence is itself useful.

## Return packet

```yaml
mission_id: Z-...
method: ...
work_done:
  - ...
verify:
  - ...
result: ...
artifacts:
  - ...
blocker: null
lesson: null
```

If a blocker exists, state exactly what human decision or missing input is required.
