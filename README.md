# Meu App — Projeto DevOps com Docker e CI

Este repositório contém um projeto prático com foco em **DevOps**, demonstrando a construção de uma aplicação containerizada com **Python + PostgreSQL**, além da configuração de um pipeline de **Integração Contínua (CI)** utilizando **GitHub Actions**.

O objetivo principal é demonstrar boas práticas de versionamento, containers, orquestração com Docker Compose e validação automática via CI.

---

## 🧪 Tecnologias utilizadas

* **Python (Flask)** — aplicação web
* **PostgreSQL** — banco de dados relacional
* **Docker** — containerização da aplicação
* **Docker Compose** — orquestração dos serviços
* **GitHub Actions** — pipeline de CI
* **Bash / Curl** — validações automatizadas

---

## 🏗️ Arquitetura do projeto

O ambiente é composto por dois serviços principais:

* **app**

  * Aplicação Python
  * Expõe a porta `5000`
  * Possui healthcheck configurado

* **postgres**

  * Banco PostgreSQL
  * Comunicação interna via rede Docker

Fluxo geral:

1. Containers são criados via Docker Compose
2. A aplicação aguarda o banco ficar saudável
3. O app conecta ao PostgreSQL
4. O endpoint principal é validado

---

## 🚀 Como rodar o projeto localmente

### Pré-requisitos

* Docker
* Docker Compose

### Passo a passo

Clone o repositório:

```bash
git clone https://github.com/danielviana2127/meu-app.git
cd meu-app
```

Suba os containers:

```bash
docker compose up --build
```

Acesse a aplicação:

```bash
curl http://localhost:5000
```

Ou pelo navegador:

```
http://localhost:5000
```

---

## 🔎 Healthcheck

A aplicação possui healthcheck configurado no container, garantindo que o serviço só seja considerado saudável após estar totalmente operacional.

Você pode validar com:

```bash
docker ps
docker inspect --format='{{.State.Health.Status}}' meu-app-app-1
```

---

## ⚙️ Pipeline de Integração Contínua (CI)

O pipeline está definido em:

```
.github/workflows/ci.yml
```

O CI executa automaticamente:

1. Checkout do código
2. Build das imagens Docker
3. Subida dos containers
4. Aguardar healthcheck da aplicação
5. Teste do endpoint com `curl`
6. Finalização e limpeza do ambiente

Status atual do pipeline: ✅ **Passing**

---

## 📁 Estrutura do projeto

```text
meu-app/
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
├── docker-compose.yml
├── .github/
│   └── workflows/
│       └── ci.yml
└── README.md
```

---

## 🎯 Objetivo do projeto

Este projeto foi criado com foco em aprendizado e demonstração prática de:

* Containers e redes Docker
* Dependência entre serviços
* Healthchecks
* Automação com GitHub Actions
* Boas práticas de CI para aplicações containerizadas

---

## 🔮 Próximos passos (ideias de evolução)

* Adicionar testes automatizados
* Observabilidade (Prometheus / Grafana)
* Deploy em ambiente cloud
* Orquestração com Kubernetes

---

## 👤 Autor

Daniel Viana

---

📌 *Este repositório faz parte do meu portfólio técnico com foco em DevOps.*
