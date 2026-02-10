#!/usr/bin/env bash
set -euo pipefail

ENDPOINT_URL="https://script.google.com/macros/s/AKfycbxPp7MVg0QE36zlC2uCZefrMyoOx16UEaNy8jRYngbEjoZnyNnmN9r8mPFrK95_hJ0n/exec"

curl -X POST "$ENDPOINT_URL" \
    -H "Content-Type: application/json" \
    -d '{"answer":"YES","timestamp":"2026-02-10T00:00:00.000Z","userAgent":"curl","pageUrl":"local-test","referrer":""}'
