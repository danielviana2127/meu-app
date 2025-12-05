📦 Meu App Python com PostgreSQL usando Docker

Este projeto é uma aplicação Python (Flask) totalmente conteinerizada utilizando Docker e Docker Compose, com um banco de dados PostgreSQL integrado.
Ele faz parte do meu estudo prático na área de DevOps, explorando criação de imagens, orquestração de serviços e boas práticas de containerização.

🚀 Tecnologias Utilizadas

Python 3.10

Flask

PostgreSQL 15

psycopg2-binary

Docker

Docker Compose

📁 Estrutura do Projeto
meu-app-python-pro/
│
├── app.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── .dockerignore

Função de cada arquivo
Arquivo	Descrição
app.py	Código principal da aplicação Flask, incluindo conexão com o PostgreSQL.
Dockerfile	Define como a imagem personalizada da aplicação Python é construída.
docker-compose.yml	Orquestra os containers (aplicação + banco de dados).
requirements.txt	Lista de dependências do projeto Python.
.dockerignore	Arquivos que o Docker deve ignorar ao construir a imagem.
🐳 Como Executar o Projeto com Docker Compose

Antes de tudo, certifique-se de que o Docker está instalado.

🔹 1. Build e inicialização dos containers
docker compose up --build -d

🔹 2. Verificar containers rodando
docker ps


Você deve ver:

app-pro-container

postgres-db

🌐 Acessar a Aplicação

Acesse em:

👉 http://localhost:5000

Se tudo estiver funcionando, você verá:

Conexão com PostgreSQL bem-sucedida!

🛢️ Credenciais do Banco de Dados

Definidas no docker-compose.yml:

Variável	Valor
POSTGRES_USER	meuuser
POSTGRES_PASSWORD	minhasenha
POSTGRES_DB	meudb
Porta	5432
🗄️ Acessar o Banco via Terminal

Execute:

docker exec -it postgres-db psql -U meuuser -d meudb

💡 Comandos Docker Úteis
Parar os containers:
docker compose down

Reiniciar:
docker compose restart

Ver logs do app:
docker logs app-pro-container

🧪 Teste Rápido da Aplicação
curl http://localhost:5000


Resposta esperada:

Conexão com PostgreSQL bem-sucedida!

🎯 Objetivo do Projeto

Este projeto faz parte do meu estudo para me tornar um profissional na área de DevOps, aprendendo:

Containerização (Docker)

Orquestração (Docker Compose)

Integração entre serviços

Deploy local com infraestrutura mínima

Boas práticas de versionamento e organização

🔮 Próximos Passos

Criar pipeline CI/CD (GitHub Actions)

Publicar a imagem no Docker Hub

Deploy em Kubernetes

Deploy em Cloud (AWS, Azure ou GCP)

Monitoramento com Prometheus e Grafana

Infraestrutura como Código (Terraform)

👨‍💻 Autor

Daniel Viana
DevOps Student • Python • Docker • Cloud • Automation
