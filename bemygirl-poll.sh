#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   export FIRECRAWL_API_KEY=fc-xxxx
#   ./bemygirl-poll.sh https://api.firecrawl.dev/v2/batch/scrape/<JOB_ID> > bemygirl_extract_full.json
# Or:
#   ./bemygirl-poll.sh <JOB_ID> > bemygirl_extract_full.json

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <job-url-or-id>" >&2
  exit 1
fi

JOB_REF="$1"
if [[ "$JOB_REF" == https://api.firecrawl.dev/* ]]; then
  JOB_URL="$JOB_REF"
else
  JOB_URL="https://api.firecrawl.dev/v2/batch/scrape/$JOB_REF"
fi

AUTH_HEADER="Authorization: Bearer ${FIRECRAWL_API_KEY:-}"
CONTENT_HEADER="Content-Type: application/json"

# Poll until status is completed/failed
while true; do
  RESP=$(curl -sS -H "$AUTH_HEADER" -H "$CONTENT_HEADER" "$JOB_URL")
  STATUS=$(printf '%s' "$RESP" | sed -n 's/.*"status":"\([^"]*\)".*/\1/p') || STATUS=""
  if [[ "$STATUS" == "completed" || "$STATUS" == "failed" || "$STATUS" == "error" ]]; then
    printf '%s' "$RESP"
    exit 0
  fi
  sleep 3
done
