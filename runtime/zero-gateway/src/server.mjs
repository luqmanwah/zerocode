import http from "node:http";
import crypto from "node:crypto";

const PORT = Number(process.env.PORT || 3000);
const VERSION = "0.1.0";

const ZEROLINE = [
  "INPUT",
  "UNDERSTAND",
  "OBJECTIVE",
  "HARDLINES",
  "METHOD",
  "EXECUTE",
  "VERIFY",
  "RESULT",
  "NEXT"
];

function send(res, status, body) {
  const payload = JSON.stringify(body, null, 2);
  res.writeHead(status, {
    "content-type": "application/json; charset=utf-8",
    "content-length": Buffer.byteLength(payload)
  });
  res.end(payload);
}

async function readJson(req) {
  const chunks = [];
  for await (const chunk of req) chunks.push(chunk);
  if (!chunks.length) return {};
  return JSON.parse(Buffer.concat(chunks).toString("utf8"));
}

function missionId() {
  return "Z-" + Date.now().toString(36).toUpperCase() + "-" + crypto.randomBytes(3).toString("hex").toUpperCase();
}

const server = http.createServer(async (req, res) => {
  try {
    if (req.method === "GET" && req.url === "/health") {
      return send(res, 200, {
        ok: true,
        service: "zero-gateway",
        version: VERSION,
        mode: "stateless"
      });
    }

    if (req.method === "GET" && req.url === "/zeroline") {
      return send(res, 200, {
        version: "ZL-0.1",
        line: ZEROLINE,
        rule: "hard on direction, fluid on method"
      });
    }

    if (req.method === "POST" && req.url === "/mission") {
      const input = await readJson(req);

      if (!input.objective || typeof input.objective !== "string") {
        return send(res, 400, {
          ok: false,
          error: "objective is required"
        });
      }

      const packet = {
        mission_id: missionId(),
        objective: input.objective.trim(),
        hardlines: Array.isArray(input.hardlines) ? input.hardlines : [],
        inputs: Array.isArray(input.inputs) ? input.inputs : [],
        preferred_result: input.preferred_result ?? null,
        runtime_hint: input.runtime_hint ?? "auto",
        status: "ready"
      };

      return send(res, 202, {
        ok: true,
        zeroline: "ZL-0.1",
        packet,
        next: "resolve"
      });
    }

    return send(res, 404, {
      ok: false,
      error: "not_found"
    });
  } catch (error) {
    return send(res, 500, {
      ok: false,
      error: "gateway_error",
      message: error instanceof Error ? error.message : String(error)
    });
  }
});

server.listen(PORT, "0.0.0.0", () => {
  console.log("zero-gateway v" + VERSION + " listening on :" + PORT);
});
