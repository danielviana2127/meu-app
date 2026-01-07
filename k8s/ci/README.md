# CI / RBAC

Esta pasta contém os manifests relacionados à segurança e permissões
utilizadas por pipelines de CI/CD no Kubernetes.

## Objetivo

O arquivo `rbac.yaml` define Roles e RoleBindings que permitem que
pipelines (ex: GitHub Actions, Jenkins ou GitLab CI) interajam com o
cluster Kubernetes de forma controlada e segura.

Essas permissões são necessárias para ações como:
- Deploy de aplicações
- Atualização de Services
- Leitura de Pods e status de recursos

## Boas práticas aplicadas

- Princípio do menor privilégio (Least Privilege)
- Separação entre aplicação e automação
- Preparação para pipelines de CI/CD em ambiente real

## Observação

Neste projeto, o RBAC foi aplicado com foco educacional e simula um
cenário real de automação de deploy em Kubernetes.

