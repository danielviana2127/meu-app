#!/bin/bash
set -e

URL="http://localhost:5000"

echo "Testando aplicação em $URL"

for i in {1..10}; do
  STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000 || true)

  if [ "$STATUS" = "200" ]; then exit 0; fi
  sleep 3
done
exit 1

