# ZEROCODE — ZEABUR FIELD v0.1

Zeabur is the experimental execution field for ZEROCODE. It is not ZERO identity and is not a permanent dependency.

## Design rule

ZERO CORE must survive independently from the Zeabur runtime field.

The Zeabur project may be rebuilt, replaced, or deleted without changing Protocol ZERO or ZEROLINE.

## Initial service roles

### zero-gateway
Small operational API/control entrypoint:
- receive mission/work packets
- expose worker status
- route work to available adapters

Prefer stateless operation initially.

### openclaw
Worker runtime:
- research scout
- browser/collection work
- long-running utilities
- repetitive document preprocessing
- inbox/file classification

OpenClaw is a worker, not ZERO identity.

### insforge
Experimental backend adapter:
- operational task/event/worker records when useful
- searchable temporary runtime data
- replaceable without changing ZEROLINE

InsForge is not canon.

## Persistence rule

Protocol/config/code:
- GitHub

Documents/evidence/artifacts:
- Google Drive Work Mode

Temporary runtime/task state:
- Zeabur/InsForge when convenient

Never make Zeabur local disk the sole copy of important work.

## Infrastructure freedom

Inside Zeabur ZERO may freely replace frameworks, backends, services, queue design, model gateways, and topology when hardlines remain intact.

## Recovery

If a Zeabur experiment breaks:
1. Preserve Drive/GitHub artifacts.
2. Stop the failing route.
3. Restore LAST_KNOWN_GOOD behavior.
4. Rebuild only the minimum required services.
5. Continue production work.
