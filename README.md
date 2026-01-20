## 📦 PAIF – Repositório de Infraestrutura (Infra)

Este repositório representa o quinto repositório do projeto PAIF, sendo responsável por toda a infraestrutura local do sistema, incluindo Docker, Docker Compose e Kubernetes (Docker Desktop).

O objetivo deste repositório é permitir a execução completa do sistema tanto via Docker Compose quanto via Kubernetes, garantindo portabilidade, padronização e facilidade de avaliação.

# 🐳 Docker
## 📂 Pasta docker/

Contém os Dockerfiles individuais de cada microserviço:

- users-api
- payments-api
- notifications-api
- catalog-api

Essas imagens são utilizadas tanto pelo Docker Compose quanto pelo Kubernetes.

# 🧩 Docker Compose
## 📄 docker-compose.yml

Responsável por subir todo o ambiente local via Docker, incluindo:

- 4 microserviços (.NET)
- SQL Server
- RabbitMQ (com Management UI)

## 📄 .env
Arquivo contendo variáveis sensíveis (SECRETS) como:

- Senhas
- Connection Strings
- Credenciais do RabbitMQ

## ⚠️ Importante:
Este arquivo será versionado exclusivamente para fins de verificação acadêmica.
Em um cenário real de produção, este arquivo não deveria ser commitado.

# ▶️ Script de inicialização com Docker Compose
start-compose.bat (Windows)

## 📌 Pré-requisitos:

Docker Desktop instalado
Docker Desktop em execução
 - Não é necessário Kubernetes para este modo de execução.
## 📌 O que esse script faz

Remove containers, volumes e imagens locais
Reconstrói todas as imagens Docker do projeto
Sobe todo o ambiente via Docker Compose, incluindo:
4 microserviços
SQL Server
RabbitMQ
Executa o ambiente em segundo plano (detached mode)

# ☸️ Kubernetes (Docker Desktop)
## 📂 Pasta k8s/

Contém todos os manifestos Kubernetes, organizados por responsabilidade:

k8s/infra
Infraestrutura compartilhada:
- Namespace
- SQL Server
- RabbitMQ
- ConfigMaps globais
- Secrets globais

k8s/users, k8s/payments, k8s/notifications, k8s/catalog
Cada pasta contém:

Deployment
Service (ClusterIP + NodePort)
ConfigMaps específicos do microserviço

# ▶️ Script de inicialização com Kubernetes
deploy-local.sh
## 📌 Pré-requisitos:

Docker Desktop instalado
Kubernetes habilitado no Docker Desktop
Settings → Kubernetes → Enable Kubernetes
kubectl disponível no PATH

## 📌 O que esse script faz

Builda todas as imagens Docker locais que serão utilizadas pelo Kubernetes
Aplica os manifestos Kubernetes organizados por responsabilidade:
Infraestrutura compartilhada (namespace, SQL Server, RabbitMQ, ConfigMaps e Secrets)
Microserviços individualmente
Cria um port-forward temporário para o SQL Server, permitindo:
Conexão externa via DBeaver / SSMS
Análise e validação do banco de dados

## 📌 Regras atendidas:
- Uso obrigatório de Deployments
- Uso de Services
- Uso de ConfigMaps para dados não sensíveis
- Uso de Secrets para dados sensíveis
- Nenhum Pod criado de forma isolada
