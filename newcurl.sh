#!/usr/bin/env bash
set -euo pipefail

# Call Firecrawl Extract API with a JSON payload
curl -sS -X POST "https://api.firecrawl.dev/v2/extract" \
  -H "Authorization: Bearer fc-3ded724c13c3404bab34424f5b4693e4" \
  -H "Content-Type: application/json" \
  -d @- <<'JSON'
{
  "urls": [
    "https://dev.escrtd.com/en/charline/",
    "https://dev.escrtd.com/en/maya-m/",
    "https://dev.escrtd.com/en/loly/",
    "https://dev.escrtd.com/en/virginia/",
    "https://dev.escrtd.com/en/aiste/",
    "https://dev.escrtd.com/en/anya/",
    "https://dev.escrtd.com/en/lola/",
    "https://dev.escrtd.com/en/miranda/",
    "https://dev.escrtd.com/en/vika/",
    "https://dev.escrtd.com/en/tiffany/",
    "https://dev.escrtd.com/en/samanta/",
    "https://dev.escrtd.com/en/amira-n/",
    "https://dev.escrtd.com/en/lola-l/",
    "https://dev.escrtd.com/en/nicole/",
    "https://dev.escrtd.com/en/masha-n/",
    "https://dev.escrtd.com/en/divina/",
    "https://dev.escrtd.com/en/sarah/",
    "https://dev.escrtd.com/en/marina-n/",
    "https://dev.escrtd.com/en/cindy-s/",
    "https://dev.escrtd.com/en/malessia/",
    "https://dev.escrtd.com/en/elya/",
    "https://dev.escrtd.com/en/andie/",
    "https://dev.escrtd.com/en/ninna-a/",
    "https://dev.escrtd.com/en/paulina/",
    "https://dev.escrtd.com/en/chloe-a/",
    "https://dev.escrtd.com/en/sharon/",
    "https://dev.escrtd.com/en/nora/",
    "https://dev.escrtd.com/en/venus/",
    "https://dev.escrtd.com/en/stella/",
    "https://dev.escrtd.com/en/daphne/",
    "https://dev.escrtd.com/en/marie/",
    "https://dev.escrtd.com/en/anais-b/",
    "https://dev.escrtd.com/en/clelia/",
    "https://dev.escrtd.com/en/vicky-w/",
    "https://dev.escrtd.com/en/evelina/",
    "https://dev.escrtd.com/en/noelia/",
    "https://dev.escrtd.com/en/marie-s/",
    "https://dev.escrtd.com/en/naomi/",
    "https://dev.escrtd.com/en/amelia-m/",
    "https://dev.escrtd.com/en/sheilla/",
    "https://dev.escrtd.com/en/mia/",
    "https://dev.escrtd.com/en/eva-m/",
    "https://dev.escrtd.com/en/emma-t/",
    "https://dev.escrtd.com/en/adela/",
    "https://dev.escrtd.com/en/hanna/",
    "https://dev.escrtd.com/en/marta-v/",
    "https://dev.escrtd.com/en/sandra-b/",
    "https://dev.escrtd.com/en/chiara-m/",
    "https://dev.escrtd.com/en/marina/",
    "https://dev.escrtd.com/en/sophia-l/",
    "https://dev.escrtd.com/en/elise-c/"
  ],
  "prompt": "Extract all the specified details from each model's profile page linked from the main site. Ensure to gather all photo and video URLs from the gallery, and include all offered services and languages. Capture the rates for different time periods and the schedule for each day of the week.",
  "includeTags": [".girlid", ".profileimgurl", ".info_nationality", ".info_age", ".info_height", ".info_weight", ".info_haircolor", ".info_eyes", ".info_pubichair", ".info_breastsize", ".biodescript", ".servicename", ".servicelink", ".languagespoken", ".ratesandcharges", ".whatsappnumber"],
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
            "contact_details_whatsapp": { "type": "string" },
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
JSON
curl -s -X POST "https://api.firecrawl.dev/v2/extract" \
  -H "Authorization: Bearer  "urls": ["https://dev.escrtd.com/en/charline/", "https://dev.escrtd.com/en/maya-m/", "https://dev.escrtd.com/en/loly/", "https://dev.escrtd.com/en/virginia/", "https://dev.escrtd.com/en/aiste/", "https://dev.escrtd.com/en/anya/", "https://dev.escrtd.com/en/lola/", "https://dev.escrtd.com/en/miranda/", "https://dev.escrtd.com/en/vika/", "https://dev.escrtd.com/en/tiffany/", "https://dev.escrtd.com/en/samanta/", "https://dev.escrtd.com/en/amira-n/", "https://dev.escrtd.com/en/lola-l/", "https://dev.escrtd.com/en/nicole/", "https://dev.escrtd.com/en/masha-n/", "https://dev.escrtd.com/en/divina/", "https://dev.escrtd.com/en/sarah/", "https://dev.escrtd.com/en/marina-n/", "https://dev.escrtd.com/en/cindy-s/", "https://dev.escrtd.com/en/malessia/", "https://dev.escrtd.com/en/elya/", "https://dev.escrtd.com/en/andie/", "https://dev.escrtd.com/en/ninna-a/", "https://dev.escrtd.com/en/paulina/", "https://dev.escrtd.com/en/chloe-a/", "https://dev.escrtd.com/en/sharon/", "https://dev.escrtd.com/en/nora/", "https://dev.escrtd.com/en/venus/", "https://dev.escrtd.com/en/stella/", "https://dev.escrtd.com/en/daphne/", "https://dev.escrtd.com/en/marie/", "https://dev.escrtd.com/en/anais-b/", "https://dev.escrtd.com/en/clelia/", "https://dev.escrtd.com/en/vicky-w/", "https://dev.escrtd.com/en/evelina/", "https://dev.escrtd.com/en/noelia/", "https://dev.escrtd.com/en/marie-s/", "https://dev.escrtd.com/en/naomi/", "https://dev.escrtd.com/en/amelia-m/", "https://dev.escrtd.com/en/sheilla/", "https://dev.escrtd.com/en/mia/", "https://dev.escrtd.com/en/eva-m/", "https://dev.escrtd.com/en/emma-t/", "https://dev.escrtd.com/en/adela/", "https://dev.escrtd.com/en/hanna/", "https://dev.escrtd.com/en/marta-v/", "https://dev.escrtd.com/en/sandra-b/", "https://dev.escrtd.com/en/chiara-m/", "https://dev.escrtd.com/en/marina/", "https://dev.escrtd.com/en/sophia-l/", "https://dev.escrtd.com/en/elise-c/", "https://dev.escrtd.com/en/"], \
  -H "Content-Type: application/json" \
  -d '{
    "urls": ["https://dev.escrtd.com/en/charline/", "https://dev.escrtd.com/en/maya-m/", "https://dev.escrtd.com/en/loly/", "https://dev.escrtd.com/en/virginia/", "https://dev.escrtd.com/en/aiste/", "https://dev.escrtd.com/en/anya/", "https://dev.escrtd.com/en/lola/", "https://dev.escrtd.com/en/miranda/", "https://dev.escrtd.com/en/vika/", "https://dev.escrtd.com/en/tiffany/", "https://dev.escrtd.com/en/samanta/", "https://dev.escrtd.com/en/amira-n/", "https://dev.escrtd.com/en/lola-l/", "https://dev.escrtd.com/en/nicole/", "https://dev.escrtd.com/en/masha-n/", "https://dev.escrtd.com/en/divina/", "https://dev.escrtd.com/en/sarah/", "https://dev.escrtd.com/en/marina-n/", "https://dev.escrtd.com/en/cindy-s/", "https://dev.escrtd.com/en/malessia/", "https://dev.escrtd.com/en/elya/", "https://dev.escrtd.com/en/andie/", "https://dev.escrtd.com/en/ninna-a/", "https://dev.escrtd.com/en/paulina/", "https://dev.escrtd.com/en/chloe-a/", "https://dev.escrtd.com/en/sharon/", "https://dev.escrtd.com/en/nora/", "https://dev.escrtd.com/en/venus/", "https://dev.escrtd.com/en/stella/", "https://dev.escrtd.com/en/daphne/", "https://dev.escrtd.com/en/marie/", "https://dev.escrtd.com/en/anais-b/", "https://dev.escrtd.com/en/clelia/", "https://dev.escrtd.com/en/vicky-w/", "https://dev.escrtd.com/en/evelina/", "https://dev.escrtd.com/en/noelia/", "https://dev.escrtd.com/en/marie-s/", "https://dev.escrtd.com/en/naomi/", "https://dev.escrtd.com/en/amelia-m/", "https://dev.escrtd.com/en/sheilla/", "https://dev.escrtd.com/en/mia/", "https://dev.escrtd.com/en/eva-m/", "https://dev.escrtd.com/en/emma-t/", "https://dev.escrtd.com/en/adela/", "https://dev.escrtd.com/en/hanna/", "https://dev.escrtd.com/en/marta-v/", "https://dev.escrtd.com/en/sandra-b/", "https://dev.escrtd.com/en/chiara-m/", "https://dev.escrtd.com/en/marina/", "https://dev.escrtd.com/en/sophia-l/", "https://dev.escrtd.com/en/elise-c/", "https://dev.escrtd.com/en/"],

    "prompt": "Extract all the specified details from each model's profile page linked from the main site. Ensure to gather all photo and video URLs from the gallery, and include all offered services and languages. Capture the rates for different time periods and the schedule for each day of the week.",
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
              "name": {
                "type": "string"
              },
              "location": {
                "type": "string"
              },
              "type": {
                "type": "string"
              },
              "contact_details_whatsapp": {
                "type": "string"
              },
              "status": {
                "type": "string"
              },
              "status_timestamp": {
                "type": "string"
              },
              "photo_urls": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "video_urls": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "nationality": {
                "type": "string"
              },
              "height": {
                "type": "string"
              },
              "age": {
                "type": "number"
              },
              "eye_color": {
                "type": "string"
              },
              "weight": {
                "type": "string"
              },
              "hair_color": {
                "type": "string"
              },
              "pubic_hair": {
                "type": "string"
              },
              "breast_size": {
                "type": "string"
              },
              "biography": {
                "type": "string"
              },
              "offered_services": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "languages": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "rates": {
                "type": "object",
                "required": [],
                "properties": {
                  "30_minutes": {
                    "type": "string"
                  },
                  "1_hour": {
                    "type": "string"
                  },
                  "1_night": {
                    "type": "string"
                  },
                  "1_weekend": {
                    "type": "string"
                  }
                }
              },
              "schedule": {
                "type": "object",
                "required": [],
                "properties": {
                  "monday": {
                    "type": "string"
                  },
                  "tuesday": {
                    "type": "string"
                  },
                  "wednesday": {
                    "type": "string"
                  },
                  "thursday": {
                    "type": "string"
                  },
                  "friday": {
                    "type": "string"
                  },
                  "saturday": {
                    "type": "string"
                  },
                  "sunday": {
                    "type": "string"
                  }
                }
              }
            }
          }
        }
      }
    },
    "scrapeOptions": {
      "formats": [{"type": "json", "prompt": "Extract all the specified details from each model's profile page linked from the main site. Ensure to gather all photo and video URLs from the gallery, and include all offered services and languages. Capture the rates for different time periods and the schedule for each day of the week.",
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
              "name": {
                "type": "string"
              },
              "location": {
                "type": "string"
              },
              "type": {
                "type": "string"
              },
              "contact_details_whatsapp": {
                "type": "string"
              },
              "status": {
                "type": "string"
              },
              "status_timestamp": {
                "type": "string"
              },
              "photo_urls": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "video_urls": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "nationality": {
                "type": "string"
              },
              "height": {
                "type": "string"
              },
              "age": {
                "type": "number"
              },
              "eye_color": {
                "type": "string"
              },
              "weight": {
                "type": "string"
              },
              "hair_color": {
                "type": "string"
              },
              "pubic_hair": {
                "type": "string"
              },
              "breast_size": {
                "type": "string"
              },
              "biography": {
                "type": "string"
              },
              "offered_services": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "languages": {
                "type": "array",
                "items": {
                  "type": "object",
                  "required": [],
                  "properties": {}
                }
              },
              "rates": {
                "type": "object",
                "required": [],
                "properties": {
                  "30_minutes": {
                    "type": "string"
                  },
                  "1_hour": {
                    "type": "string"
                  },
                  "1_night": {
                    "type": "string"
                  },
                  "1_weekend": {
                    "type": "string"
                  }
                }
              },
              "schedule": {
                "type": "object",
                "required": [],
                "properties": {
                  "monday": {
                    "type": "string"
                  },
                  "tuesday": {
                    "type": "string"
                  },
                  "wednesday": {
                    "type": "string"
                  },
                  "thursday": {
                    "type": "string"
                  },
                  "friday": {
                    "type": "string"
                  },
                  "saturday": {
                    "type": "string"
                  },
                  "sunday": {
                    "type": "string"
                  }
                }
              }
            }
          }
        }
      }
    },}]
    }
  }'

  "urls": [
    "https://bemygirl.ch/en/*"
  ],
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
            "name": {
              "type": "string"
            },
            "location": {
              "type": "string"
            },
            "type": {
              "type": "string"
            },
            "contact_details_whatsapp": {
              "type": "string"
            },
            "status": {
              "type": "string"
            },
            "status_timestamp": {
              "type": "string"
            },
            "photo_urls": {
              "type": "array",
              "items": {
                "type": "object",
                "required": [],
                "properties": {}
              }
            },
            "video_urls": {
              "type": "array",
              "items": {
                "type": "object",
                "required": [],
                "properties": {}
              }
            },
            "nationality": {
              "type": "string"
            },
            "height": {
              "type": "string"
            },
            "age": {
              "type": "number"
            },
            "eye_color": {
              "type": "string"
            },
            "weight": {
              "type": "string"
            },
            "hair_color": {
              "type": "string"
            },
            "pubic_hair": {
              "type": "string"
            },
            "breast_size": {
              "type": "string"
            },
            "biography": {
              "type": "string"
            },
            "offered_services": {
              "type": "array",
              "items": {
                "type": "object",
                "required": [],
                "properties": {}
              }
            },
            "languages": {
              "type": "array",
              "items": {
                "type": "object",
                "required": [],
                "properties": {}
              }
            },
            "rates": {
              "type": "object",
              "required": [],
              "properties": {
                "30_minutes": {
                  "type": "string"
                },
                "1_hour": {
                  "type": "string"
                },
                "1_night": {
                  "type": "string"
                },
                "1_weekend": {
                  "type": "string"
                }
              }
            },
            "schedule": {
              "type": "object",
              "required": [],
              "properties": {
                "monday": {
                  "type": "string"
                },
                "tuesday": {
                  "type": "string"
                },
                "wednesday": {
                  "type": "string"
                },
                "thursday": {
                  "type": "string"
                },
                "friday": {
                  "type": "string"
                },
                "saturday": {
                  "type": "string"
                },
                "sunday": {
                  "type": "string"
                }
              }
            }
          }
        }
      }
    }
  },
  "prompt": "Extract all the specified details from each model's profile page linked from the main site. Ensure to gather all photo and video URLs from the gallery, and include all offered services and languages. Capture the rates for different time periods and the schedule for each day of the week.",
  "enableWebSearch": false,
  "options": {
    "onlyMainContent": true,
    "parsePDF": true,
    "stealthMode": false,
    "excludeTags": [],
    "waitFor": "",
    "timeout": "",
    "maxAge": "1 days",
    "ignoreSitemap": false,
    "crawlEntireDomain": false,
    "sitemap": "include",
    "limit": 100,
    "maxDepth": "",
    "excludePaths": [],
    "includeTags": [".girlid", ".profileimgurl", ".info_nationality", ".info_age", ".info_height", ".info_weight", ".info_haircolor", ".info_eyes", ".info_pubichair", ".info_breastsize", ".biodescript", ".servicename", ".servicelink", ".languagespoken", ".ratesandcharges", ".whatsappnumber"],
    "includeSubdomains": false,
    "search": "",
    "scrapeContentFromSearchResults": true,
    "timeBasedSearch": "",
    "location": "",
    "prompt": "Extract all the specified details from each model's profile page linked from the main site. Ensure to gather all photo and video URLs from the gallery, and include all offered services and languages. Capture the rates for different time periods and the schedule for each day of the week."
  },
  "formats": [
    "markdown",
    "json"
  ],