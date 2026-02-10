#!/usr/bin/env bash
set -euo pipefail

ENDPOINT_URL="PASTE_YOUR_APPS_SCRIPT_WEB_APP_URL_HERE"

curl -X POST "$ENDPOINT_URL" \
    -H "Content-Type: application/json" \
    -d '{"answer":"YES","timestamp":"2026-02-10T00:00:00.000Z","userAgent":"curl","pageUrl":"local-test","referrer":""}'
