#!/bin/bash
set -e

URL="http://app:5000"

echo "Testando aplicação em $URL"

STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ "$STATUS" -ne 200 ]; then
  echo "❌ Aplicação não respondeu corretamente (status $STATUS)"
  docker compose logs
  exit 1
fi

echo "✅ Aplicação respondeu com HTTP 200"

