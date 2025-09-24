#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   export FIRECRAWL_API_KEY=fc-xxxx
#   ./escrtd-batch.sh > escrtd_extract.json

curl -sS --request POST \
  --url "https://api.firecrawl.dev/v2/batch/scrape" \
  --header "Authorization: Bearer ${FIRECRAWL_API_KEY:-}" \
  --header 'Content-Type: application/json' \
  --data @- <<'JSON'
{
  "urls": [
    "https://escrtd.com/en/charline/",
    "https://escrtd.com/en/maya-m/",
    "https://escrtd.com/en/loly/",
    "https://escrtd.com/en/virginia/",
    "https://escrtd.com/en/aiste/",
    "https://escrtd.com/en/vika/",
    "https://escrtd.com/en/tiffany/",
    "https://escrtd.com/en/elise-c/"
  ],
  "onlyMainContent": false,
  "includeTags": [
    ".girlid",
    ".profileimgurl",
    ".info_nationality",
    ".info_age",
    ".info_height",
    ".info_weight",
    ".info_haircolor",
    ".info_eyes",
    ".info_pubichair",
    ".info_breastsize",
    ".biodescript",
    ".servicename",
    ".servicelink",
    ".languagespoken",
    ".ratesandcharges",
    ".whatsappnumber",
    ".smsnumber",
    "a[href^=tel:]",
    "a[href*=wa.me]",
    "a[href*=whatsapp]",
    "img","video","source"
  ],
  "maxAge": 172800000,
  "parsers": [],
  "formats": [
    {
      "type": "json",
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
                "contact_details": { "type": "object", "required": [], "properties": { "whatsapp": { "type": "string" }, "mobilePhone": { "type": "string" } } },
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
  ]
}
JSON


