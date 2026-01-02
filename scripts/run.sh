#!/bin/bash
set -e

echo "Subindo aplicação e banco de dados..."
docker compose up -d --build

echo "Aguardando serviços iniciarem..."
sleep 15

echo "Aplicação disponível em:"
echo "http://localhost:8000"

