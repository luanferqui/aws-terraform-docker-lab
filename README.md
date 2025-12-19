# [Docker AWS Lab]

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)

## 📖 Sobre o Projeto

Este projeto foi desenvolvido como parte dos meus estudos em **DevOps e Cloud Computing**. O objetivo principal foi criar uma aplicação conteinerizada e realizar o deploy em ambiente de nuvem utilizando boas práticas de infraestrutura.

O fluxo de trabalho consistiu em criar a imagem Docker localmente, enviá-la para um repositório privado (AWS ECR) e executá-la em uma instância EC2.

---

## 🚀 Tecnologias Utilizadas

* **Linguagem:** [Python / Node.js / Java - coloque a que usou]
* **Containerização:** Docker
* **Cloud Provider:** AWS (Amazon Web Services)
* **Serviços AWS:**
    * **EC2:** Para hospedagem da aplicação.
    * **ECR (Elastic Container Registry):** Para armazenamento das imagens Docker.
    * **IAM:** Gerenciamento de permissões e segurança.
* **Sistema Operacional:** Linux (Ubuntu/Amazon Linux)

---

## ⚙️ Arquitetura e Fluxo

1.  Desenvolvimento da aplicação e criação do `Dockerfile`.
2.  Build da imagem localmente.
3.  Autenticação via AWS CLI.
4.  Push da imagem para o AWS ECR.
5.  Pull e execução do container na instância EC2 na nuvem.

---

## 📦 Como rodar localmente

Pré-requisitos: Docker instalado.

```bash
# Clone este repositório
$ git clone [https://github.com/](https://github.com/)[SEU-USUARIO]/[NOME-DO-REPO].git

# Acesse a pasta do projeto
$ cd [NOME-DO-REPO]

# Construa a imagem Docker
$ docker build -t nome-da-imagem .

# Rode o container
$ docker run -d -p 8080:80 nome-da-imagem
