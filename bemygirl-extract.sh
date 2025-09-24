#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   export FIRECRAWL_API_KEY=fc-xxxx
#   ./bemygirl-extract.sh > bemygirl_extract.json

curl -sS -X POST "https://api.firecrawl.dev/v2/extract" \
  -H "Authorization: Bearer ${FIRECRAWL_API_KEY:-}" \
  -H 'Content-Type: application/json' \
  -d @- <<'JSON'
{
  "urls": [
    "https://www.bemygirl.ch/en/carla",
    "https://www.bemygirl.ch/en/khalifa",
    "https://www.bemygirl.ch/en/vita",
    "https://www.bemygirl.ch/en/tianna",
    "https://www.bemygirl.ch/en/kristina"
  ],
  "prompt": "From each Bemygirl profile page, extract a complete structured profile. Be exhaustive and use all visible content including headers, labeled lists, galleries, and any text sections. For media, return direct image URLs found in the gallery and any video URLs. For languages/services, return normalized arrays of strings. For rates, map the displayed durations to keys (30_minutes, 1_hour, 1_night, 1_weekend). For schedule, include each weekday with the displayed hours or an empty string if missing. Critically, capture contact details: WhatsApp and mobile phone. Look for wa.me links, whatsapp: text, and tel: links; normalize WhatsApp by stripping non-digits. Return empty strings/arrays instead of omitting missing fields.",
  "schema": {
    "type": "object",
    "required": [],
    "properties": {
      "profiles": {
        "type": "array",
        "items": {
          "type": "object",
          "required": [],
          "properties": {
            "name": { "type": "string" },
            "location": { "type": "string" },
            "type": { "type": "string" },
            "contact_details": {
              "type": "object",
              "required": [],
              "properties": {
                "whatsapp": { "type": "string" },
                "mobilePhone": { "type": "string" }
              }
            },
            "status": { "type": "string" },
            "status_timestamp": { "type": "string" },
            "photo_urls": { "type": "array", "items": { "type": "string" } },
            "video_urls": { "type": "array", "items": { "type": "string" } },
            "nationality": { "type": "string" },
            "height": { "type": "string" },
            "age": { "type": ["number","null"] },
            "eye_color": { "type": ["string","null"] },
            "weight": { "type": ["string","null"] },
            "hair_color": { "type": ["string","null"] },
            "pubic_hair": { "type": ["string","null"] },
            "breast_size": { "type": ["string","null"] },
            "biography": { "type": "string" },
            "offered_services": { "type": "array", "items": { "type": "string" } },
            "languages": { "type": "array", "items": { "type": "string" } },
            "rates": {
              "type": "object",
              "required": [],
              "properties": {
                "30_minutes": { "type": "string" },
                "1_hour": { "type": "string" },
                "1_night": { "type": "string" },
                "1_weekend": { "type": "string" }
              }
            },
            "schedule": {
              "type": "object",
              "required": [],
              "properties": {
                "monday": { "type": "string" },
                "tuesday": { "type": "string" },
                "wednesday": { "type": "string" },
                "thursday": { "type": "string" },
                "friday": { "type": "string" },
                "saturday": { "type": "string" },
                "sunday": { "type": "string" }
              }
            }
          }
        }
      }
    }
  }
}
JSON


