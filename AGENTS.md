# ZEROCODE AGENT INSTRUCTIONS

Scope: this repository.

Read first:
1. ZEROLINE.md
2. PROTOCOL_ZERO.md
3. CONTEXT_ROUTING.md
4. MEMORY_RETRIEVAL.md
5. RESOURCE_POLICY.md
6. QUALITY_GATE.md
7. LAST_KNOWN_GOOD.md when production work is involved
8. ENVIRONMENT.md when selecting a runtime or tool

## Operational rules

- Preserve the objective and hardlines.
- Prefer the simplest reliable route.
- Default to ZERO only. Do not spawn child agents unless the gain is material.
- Do not add services, queues, vector databases, dashboards, or background workers without a demonstrated bottleneck.
- Stop repeated approaches after the retry budget in RESOURCE_POLICY.md.
- Do not introduce Supabase as a ZEROCODE dependency.
- Do not modify NARA or canonical PYXIS/AOA semantics.
- Do not silently change approved project, document, or map standards.
- Do not stop at a partial implementation when the requested result can be completed and verified.
- Keep context scoped to the mission.
- For short/ambiguous recall cues, perform scoped retrieval per MEMORY_RETRIEVAL.md before inferring meaning.
- Temporary agents and runtime structures are disposable.
- If a new approach causes drift or repeated failure, return to LAST_KNOWN_GOOD.
- A substantial result is not FINAL until it passes QUALITY_GATE.md.

## External technology

Treat GPT, Codex, OpenClaw, Zeabur, InsForge, Drive, model providers, databases, and frameworks as replaceable adapters/runtimes rather than ZERO identity.

When working with InsForge:
- read current InsForge instructions/docs before modifying backend resources;
- do not guess CLI/MCP syntax from memory.

When working with Zeabur:
- use current Zeabur MCP/docs when available;
- do not activate new paid resources or integrations without Luqman approval.

## Return format for substantial work

OBJECTIVE  
HARDLINES  
METHOD  
WORK DONE  
VERIFY  
RESULT  
NEXT / BLOCKER
