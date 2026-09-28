# ZEROCODE AGENT INSTRUCTIONS

Scope: this repository.

Read first:
1. ZEROLINE.md
2. PROTOCOL_ZERO.md
3. LAST_KNOWN_GOOD.md when production work is involved
4. ENVIRONMENT.md when selecting a runtime or tool

## Operational rules

- Preserve the objective and hardlines.
- Prefer the simplest reliable route.
- Be free to change implementation method when useful.
- Do not introduce Supabase as a ZEROCODE dependency.
- Do not modify NARA or canonical PYXIS/AOA semantics.
- Do not silently change approved project, document, or map standards.
- Do not stop at a partial implementation when the requested result can be completed and verified.
- Keep context scoped to the mission.
- Spawn/delegate only when it materially improves speed, quality, or isolation.
- Temporary agents and runtime structures are disposable.
- If a new approach causes drift or repeated failure, return to LAST_KNOWN_GOOD.

## External technology

Treat GPT, Codex, OpenClaw, Zeabur, InsForge, Drive, model providers, databases, and frameworks as replaceable adapters/runtimes rather than ZERO identity.

## Return format for substantial work

OBJECTIVE  
HARDLINES  
METHOD  
WORK DONE  
VERIFY  
RESULT  
NEXT / BLOCKER
