curl --request POST \
  --url "https://api.firecrawl.dev/v2/batch/scrape" \
  --header 'Authorization: Bearer fc-3ded724c13c3404bab34424f5b4693e4' \
  --header 'Content-Type: application/json' \
  --data '{
    "urls": ["https://escrtd.com/en/adela/", "https://escrtd.com/en/hanna/", "https://escrtd.com/en/marina/", "https://escrtd.com/en/sophia-l/", "https://escrtd.com/en/elise-c/"],
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
        ".smsnumber"
    ],
    "maxAge": 172800000,
    "parsers": [],
    "formats": [
 
        "json",
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
            "whatsappnumber": { "type": "string" },
            "smsnumber": { "type": "string" },
            "status": { "type": "string" },
            "status_timestamp": { "type": "string" },
            "photo_urls": { "type": "array", "items": { "type": "string" } },
            "video_urls": { "type": "array", "items": { "type": "string" } },
            "nationality": { "type": "string" },
            "height": { "type": "string" },
            "age": { "type": "number" },
            "eye_color": { "type": "string" },
            "weight": { "type": "string" },
            "hair_color": { "type": "string" },
            "pubic_hair": { "type": "string" },
            "breast_size": { "type": "string" },
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
}'