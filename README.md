# 🚀 Projeto DevOps – meu-app

Aplicação de exemplo desenvolvida com foco em **práticas DevOps**, cobrindo desde containerização com Docker até deploy em **Kubernetes (Minikube)**, incluindo **CI com GitHub Actions**.

Este repositório foi criado com o objetivo de **estudo, prática e portfólio**, demonstrando um fluxo completo de desenvolvimento e entrega de aplicações.

---

## 📌 Visão Geral

O projeto consiste em uma aplicação web simples que se conecta a um banco de dados **PostgreSQL**, empacotada em contêineres Docker e implantada em um cluster Kubernetes local.

Ele demonstra:

* Criação de imagens Docker
* Orquestração com Docker Compose
* Deploy em Kubernetes
* Uso de ConfigMap e Secret
* Exposição de serviços
* CI automatizado

---

## 🧱 Arquitetura

* **Aplicação Web** (container Docker)
* **PostgreSQL** (container dedicado)
* **Kubernetes (Minikube)** para orquestração
* **GitHub Actions** para CI

---

## 🛠️ Tecnologias Utilizadas

* Docker
* Docker Compose
* Kubernetes
* Minikube
* PostgreSQL
* GitHub Actions
* Linux / WSL

---

## 📂 Estrutura do Projeto

```text
meu-app/
├── app/
│   ├── Dockerfile
│   ├── index.html
│   └── nginx.conf
│
├── ci/
│   ├── rbac.yaml
│   └── README.md
│
├── k8s/
│   ├── app/
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   ├── configmap.yaml
│   │   └── secret.yaml
│   ├── postgres/
│   │   ├── postgres-deployment.yaml
│   │   └── postgres-service.yaml
│   └── ingress.yaml
│
└── README.md
```

---

## 🐳 Executando com Docker Compose

```bash
docker-compose up -d
```

A aplicação ficará disponível conforme definido no `docker-compose.yml`.

---

## ☸️ Kubernetes com Minikube

Este projeto também pode ser executado em um cluster Kubernetes local utilizando **Minikube**.

### ▶️ Iniciando o Minikube

```bash
minikube start
```

### 📦 Aplicando os manifests

```bash
kubectl apply -f k8s/postgres
kubectl apply -f k8s/app
```

Isso criará:

* Deployment e Service do PostgreSQL
* Deployment e Service da aplicação
* ConfigMap e Secret

---

### 🌐 Acessando a aplicação

Em ambientes **Windows + WSL**, a forma mais confiável de acesso é usando:

```bash
minikube service meu-app-service
```

O Minikube abrirá automaticamente o navegador com o endereço correto.

> ℹ️ O uso de Ingress pode variar conforme o ambiente local e permissões de rede.

---

## 🔐 ConfigMap e Secret

* **ConfigMap**: variáveis de configuração da aplicação
* **Secret**: credenciais do banco PostgreSQL

Ambos são consumidos pelo Deployment da aplicação seguindo boas práticas de segurança.

---

## 🔄 CI – GitHub Actions

O projeto conta com um pipeline de **Integração Contínua**, responsável por:

* Validar o código
* Build da imagem Docker
* Garantir consistência antes de deploy

Os arquivos de CI estão localizados na pasta:

```text
ci/
```

---

## 🎯 Objetivo do Projeto

Este projeto foi desenvolvido para:

* Praticar conceitos DevOps na prática
* Consolidar conhecimentos em Docker e Kubernetes
* Servir como **projeto de portfólio**
* Demonstrar capacidade de troubleshooting e documentação

---

## 📌 Próximos Passos (Evolução)

* Implementar pipeline CD
* Publicar imagens no Docker Hub
* Deploy em cluster Kubernetes em nuvem
* Monitoramento com Prometheus e Grafana

---

## 👨‍💻 Autor

**Daniel Viana**
Projeto educacional para estudos em DevOps.

---

⭐ Se este projeto te ajudou ou te inspirou, considere dar uma estrela no repositório!

