# ZEROCODE Zeabur Bootstrap

## Target

Use the existing Zeabur ZEROCODE project as the disposable runtime field.

Initial desired services:

1. existing OpenClaw
2. zero-gateway from this GitHub repository
3. no additional database/queue until a real task proves it is needed

## zero-gateway deployment

In Zeabur:

1. Open the existing ZEROCODE project.
2. Add Service → GitHub.
3. Select `luqmanwah/zerocode`.
4. Set the service root directory to:
   `runtime/zero-gateway`
5. Deploy.
6. Generate a free `.zeabur.app` domain for the service.
7. Verify:
   - `GET /health`
   - `GET /zeroline`

GitHub pushes trigger automatic redeploys for a linked service.

## Cost rule

Do not add a paid database, separately billed InsForge integration, AI Hub credit usage, or other paid service without explicit approval.

If the project runs on an already-paid dedicated VPS, prefer reusing its existing capacity rather than adding separately billed managed services.

## Security

- Never put Zeabur tokens or InsForge keys in the public repository.
- Use Zeabur environment variables or local Codex environment variables.
- Keep final/project documents in Drive, not Zeabur ephemeral disk.
