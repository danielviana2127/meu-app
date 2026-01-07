# 🚀 Projeto DevOps — Aplicação Containerizada com CI/CD e Kubernetes

Este repositório demonstra a construção de um **pipeline DevOps completo**, desde o desenvolvimento local até o deploy em Kubernetes, utilizando boas práticas de **containerização, CI/CD, infraestrutura declarativa e observabilidade básica**.

> 🎯 **Objetivo**: servir como **projeto de portfólio DevOps**, demonstrando habilidades práticas exigidas pelo mercado.

---

## 🧱 Visão Geral da Arquitetura

**Fluxo do projeto:**

1. Aplicação desenvolvida em container Docker
2. Orquestração local com Docker Compose
3. Pipeline de CI validando build e saúde da aplicação
4. Deploy em Kubernetes (Minikube)
5. Exposição via Service e Ingress
6. Configuração externa via ConfigMap e Secret

```
[Dev] → Docker → CI → Kubernetes → Service → Ingress → Browser
```

---

## 🛠️ Tecnologias Utilizadas

* **Linux / Shell Script**
* **Git & GitHub**
* **Docker & Docker Compose**
* **GitHub Actions (CI)**
* **Kubernetes (kubectl, Deployment, Service, Ingress)**
* **PostgreSQL**
* **ConfigMap & Secret**

---

## 📂 Estrutura do Repositório

```
meu-app/
├── app/                  # Código da aplicação
├── scripts/              # Scripts de teste e automação
├── k8s/                  # Manifests Kubernetes
│   ├── app/              # Deployment e Service da aplicação
│   ├── postgres/         # Deployment e Service do PostgreSQL
│   ├── ci/               # RBAC e configs de CI
│   └── ingress.yaml      # Ingress NGINX
├── docker-compose.yml
├── Dockerfile
└── README.md
```

---

## 🧪 Executando Localmente (Docker)

```bash
docker compose up -d --build
```

Acesse:

```
http://localhost:5000
```

---

## 🔄 Pipeline de CI (GitHub Actions)

O pipeline realiza:

* Build da imagem Docker
* Subida dos containers
* Healthcheck da aplicação
* Validação automática antes do merge

📁 Local: `.github/workflows/ci.yml`

---

## ☸️ Deploy em Kubernetes (Minikube)

### 1️⃣ Iniciar o cluster

```bash
minikube start
```

### 2️⃣ Aplicar os manifests

```bash
kubectl apply -f k8s/
```

### 3️⃣ Verificar recursos

```bash
kubectl get pods
kubectl get svc
kubectl get ingress
```

---

## 🌐 Acesso à Aplicação

Durante o desenvolvimento local, o acesso pode ser feito via:

```bash
minikube service meu-app-service
```

Ou utilizando **Ingress NGINX** para simular ambiente real de produção.

---

## 🔐 Configurações Sensíveis

* **ConfigMap**: variáveis de ambiente da aplicação
* **Secret**: credenciais do banco de dados

Nenhuma credencial sensível real é versionada neste repositório.

---

## 📈 Aprendizados Demonstrados

* Criação de pipelines CI confiáveis
* Debug real de containers e Kubernetes
* Uso correto de Service, Ingress e healthchecks
* Separação de configuração e código
* Versionamento profissional de projetos DevOps

---

## 👨‍💻 Autor

**Daniel Viana**
Projeto desenvolvido com foco em **aprendizado prático e portfólio profissional DevOps**.

🔗 GitHub: [https://github.com/danielviana2127](https://github.com/danielviana2127)

---

> ⭐ Se este projeto te ajudou ou te inspirou, deixe uma estrela no repositório!

