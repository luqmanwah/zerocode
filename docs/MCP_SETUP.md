# ZEROCODE MCP Setup — Codex Desktop

## Goal

When Codex opens this repository, it should have access to:

- OpenAI Developer Docs MCP — current OpenAI/Codex documentation
- Zeabur MCP — project/service/deployment/log/environment management
- InsForge MCP — backend database/storage/functions/configuration

The project configuration lives in `.codex/config.toml`.

No credentials are committed to Git.

## Required local credentials

### Zeabur

Create a current Zeabur Account Access Token. Current Zeabur access tokens begin with `zat_`.

Do not use legacy API keys.

Required environment variable:

```
ZEABUR_TOKEN
```

### InsForge

Open the InsForge project → Connect.

Collect:

```
API Key       ik_...
API Base URL  https://...insforge.app
```

ZEROCODE stores them locally under names:

```
INSFORGE_API_KEY
INSFORGE_API_BASE_URL
```

The Codex MCP adapter maps these to the variable names required by InsForge.

## Windows setup

From the zerocode repository:

```powershell
powershell -ExecutionPolicy Bypass -File .\setup\windows\set-zero-secrets.ps1
```

Paste credentials only into that local terminal prompt.

Restart Codex Desktop.

Then verify:

```powershell
powershell -ExecutionPolicy Bypass -File .\setup\windows\verify-zero.ps1
```

Expected:

- node: OK
- npx: OK
- codex: OK
- three environment variables: OK
- `codex mcp list` shows OpenAI docs, Zeabur, and InsForge.

## First verification prompts in Codex

```
ZERO: verify the Zeabur MCP connection. Read only. List the projects/services relevant to ZEROCODE and do not create or modify anything.
```

Then:

```
ZERO: verify the InsForge MCP connection. First use InsForge fetch-docs to load its current instructions, then inspect the connected project read-only. Do not create schema yet.
```

## Cost boundary

Do not enable Zeabur's separately billed InsForge integration without explicit Luqman approval.

MCP itself may be free, but infrastructure/resource usage can still be billable.

ZEROCODE's current preferred route is:
- existing Zeabur resources
- existing/free InsForge project where available
- no new paid services without approval
