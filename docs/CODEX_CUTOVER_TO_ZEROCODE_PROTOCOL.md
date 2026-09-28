# CODEX MISSION — CUTOVER TO ZEROCODE PROTOCOL v0.1

This is a production-critical configuration migration.

OBJECTIVE
Move the local Codex environment from legacy MCP / State Hub / Supabase-oriented behavior to ZEROCODE Protocol, while preserving useful knowledge and avoiding unnecessary infrastructure.

Do not redesign ZEROCODE.
Do not introduce any professional domain or project example into ZERO Core.
Do not add new services.
Do not spend money.

SOURCE OF TRUTH
Repository: luqmanwah/zerocode
Branch: main

Read first:
- ZEROLINE.md
- PROTOCOL_ZERO.md
- ZERO.md
- CONTEXT_ROUTING.md
- RESOURCE_POLICY.md
- QUALITY_GATE.md
- LAST_KNOWN_GOOD.md
- AUTHORITY.md
- AGENTS.md

CORE RULE
ZERO is the resolver.
ZEROLINE is the protected behavioral baseline.
ZEROONE / ZEROTWO / later children are temporary mission agents only.
Never make a child agent the global identity.

==================================================
PHASE 1 — INVENTORY BEFORE DELETE
==================================================

Inspect all Codex configuration layers that may contain MCP or persistent instructions:

- ~/.codex/config.toml
- ~/.codex/AGENTS.md
- repository AGENTS.md files
- repository .codex/config.toml files
- .mcp.json files
- IDE/workspace MCP settings if present
- relevant local environment-variable NAMES only

Do not print secret values.

Create a local timestamped backup outside Git:
~/.zerocode/backups/<timestamp>/

Back up only configuration files.
Do not copy secrets into GitHub.

Produce a concise inventory:
ACTIVE
LEGACY
UNKNOWN
KEEP
REMOVE

==================================================
PHASE 2 — REMOVE LEGACY MCP ROUTES
==================================================

Remove or disable MCP/configuration entries whose purpose belongs to retired architecture, including:

- Supabase MCP
- AOA State Hub MCP / hydrate / sync routes
- DELTA LAB connections
- obsolete state-hub endpoints
- stale duplicate MCP servers
- old MCP entries whose target no longer exists

Do NOT blindly delete useful generic integrations.

KEEP when currently useful:
- OpenAI Developer Docs MCP
- GitHub access required for active repositories
- file/workspace capabilities required by Codex

Zeabur, OpenClaw and InsForge are OPTIONAL adapters.
They must remain disabled/unconfigured unless an active ZERO mission later justifies them.

Do not activate them during this migration.

After cleanup:
run the current Codex MCP listing command and verify that no retired Supabase/State-Hub route remains.

==================================================
PHASE 3 — INSTALL GLOBAL ZEROCODE BOOTSTRAP
==================================================

Create or replace ~/.codex/AGENTS.md with a SMALL global bootstrap only.

It must not contain project/domain knowledge.

Use this content:

# GLOBAL ZEROCODE BOOTSTRAP

Before substantial work, identify the active objective and route context selectively.

Context scopes:
DAILY
PROFESSIONAL
PROJECT
RESEARCH
ZEROCODE
AOA/PYXIS LAB

Do not load unrelated history merely because it exists.

For ordinary one-off work:
work normally with the minimum relevant context.

For professional/project work:
use only the relevant project/domain context, source material, and approved standards.
Do not inject internal AOA/PYXIS/ZEROCODE terminology unless it is actually the subject.

For research:
preserve hypotheses and experiments, but do not promote them to canon silently.

When the user invokes ZERO:
use the canonical ZEROCODE repository and follow ZEROLINE:
INPUT -> UNDERSTAND -> OBJECTIVE -> HARDLINES -> METHOD -> EXECUTE -> VERIFY -> RESULT -> NEXT.

ZERO is hard on direction and fluid on method.

NARA is protected.
Luqman is final authority.

Do not silently alter canonical meaning or approved standards.

Use minimum resources.
Default to one reasoner and zero child agents.
Spawn temporary agents only when materially useful.

If a new method drifts or repeatedly fails, return to LAST_KNOWN_GOOD.

Canonical protocol repository:
luqmanwah/zerocode

Do not copy the entire ZEROCODE repository into the global AGENTS file.
The global file is only a bootstrap/router.

==================================================
PHASE 4 — USER-LEVEL CODEX CONFIG
==================================================

Clean ~/.codex/config.toml.

Keep the user-level configuration minimal.

Required:
- preserve normal Codex authentication/configuration
- keep OpenAI Developer Docs MCP if already working

Remove:
- legacy Supabase entries
- retired AOA State Hub entries
- duplicate/stale MCP servers

Do not set:
- a domain-specific system prompt
- a permanent child agent
- a permanent AOA persona
- a permanent project context

Do not enable Zeabur or InsForge globally.

Project-level ZEROCODE settings may remain in:
luqmanwah/zerocode/.codex/config.toml

but optional adapters must remain disabled by default.

==================================================
PHASE 5 — PERSONALIZATION / CUSTOM INSTRUCTIONS
==================================================

If the current environment gives you an authorized browser/UI capable of editing ChatGPT Custom Instructions:

change ONLY the custom-instruction content relevant to work routing.

Do NOT change:
- visual appearance
- unrelated account settings
- base personality unless explicitly requested
- Memory contents automatically
- privacy/training settings

Use this compact work-routing instruction:

"Route memory and history selectively before reasoning. Separate at minimum DAILY, PROFESSIONAL, PROJECT, RESEARCH, ZEROCODE, and AOA/PYXIS LAB. Preserve useful knowledge but activate only context relevant to the current objective. Frequent topics are not default context. Research is not canon. Historical or deprecated designs remain available for lineage but must not silently become active again. Keep professional work isolated from internal AOA/PYXIS/ZEROCODE terminology unless that is explicitly the subject. When I invoke ZERO, use ZEROLINE plus the current objective, hardlines, and only required context. Pull additional scopes only when the mission requires them. If unrelated memory enters reasoning, remove it from active context without deleting the underlying knowledge. NARA is protected. Luqman is final authority."

If the UI is not directly available or safe to edit:
DO NOT improvise.
Return the exact text and tell Luqman which field to paste it into.

==================================================
PHASE 6 — MEMORY BOUNDARY
==================================================

Do not delete AOA/PYXIS research.

Historical AOA/PYXIS archive lives in:
private repo luqmanwah/AOA-CONNECT/aoa-memory/

Treat it as scoped research/history/canon source only when the mission requires AOA/PYXIS context.

Do not copy that archive into:
- global AGENTS.md
- default prompts
- ZEROLINE
- generic embeddings
- ordinary professional contexts

Do not create a new global memory database.

==================================================
PHASE 7 — ZEROCODE PROJECT CHECK
==================================================

Open or inspect:
luqmanwah/zerocode

Verify:
- root AGENTS.md exists
- ZEROLINE.md exists
- CONTEXT_ROUTING.md exists
- RESOURCE_POLICY.md exists
- QUALITY_GATE.md exists
- LAST_KNOWN_GOOD.md exists
- optional MCP adapters are disabled by default

Do not rewrite functioning files unless a concrete inconsistency is found.

==================================================
PHASE 8 — VALIDATION
==================================================

Run three checks.

CHECK A — ordinary task
Verify Codex can handle a trivial generic task without loading AOA/PYXIS or spawning agents.

CHECK B — ZERO invocation
Prompt:
ZERO: audit the current local environment.

Verify it:
- reads/routs ZEROCODE correctly
- uses minimum relevant context
- does not invent a domain
- does not activate optional infrastructure

CHECK C — context isolation
Verify a generic coding task does not automatically load:
- AOA/PYXIS history
- professional project history
- deprecated State Hub/Supabase context

If drift occurs:
fix the routing/configuration, not by adding more huge prompts.

==================================================
STOP CONDITIONS
==================================================

STOP and ask Luqman before:
- deleting an important non-legacy connector
- deleting unrecoverable user data
- changing protected AOA/PYXIS/NARA canon
- enabling paid infrastructure
- changing privacy/account settings outside Custom Instructions
- removing a configuration whose purpose is ambiguous and potentially active

Do not ask about low-risk cleanup that is clearly legacy and already backed up.

==================================================
DONE CONDITION
==================================================

Return exactly:

STATE: READY | READY_WITH_BLOCKER | NOT_READY

LEGACY MCP REMOVED:
...

MCP KEPT:
...

GLOBAL ZEROCODE BOOTSTRAP:
PASS | FAIL

PERSONALIZATION:
UPDATED | MANUAL_STEP_REQUIRED | UNCHANGED

CONTEXT ROUTING TEST:
PASS | FAIL

ZERO INVOCATION TEST:
PASS | FAIL

BACKUP LOCATION:
...

ONLY REQUIRED HUMAN ACTION:
...

Do not deploy Zeabur.
Do not initialize InsForge.
Do not create ZEROONE.
Do not load any professional domain.
Do not add infrastructure during this cutover.
