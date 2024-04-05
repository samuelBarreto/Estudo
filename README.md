
# Projeto de estudo 

Estudo de TI relacinado a aplicação (api rest), devops, observability e novidade do mundo de TI



## Spring Boot 3, MySQL, Spring Data JPA, Hibernate CRUD REST API 

CRUD significa “criar, ler, atualizar e excluir”, que são as quatro funções básicas do armazenamento persistente. Spring Boot é uma estrutura baseada em Java usada para construir aplicativos web e APIs RESTful. Juntos, Spring Boot e CRUD podem ser usados ​​para desenvolver rapidamente uma API RESTful que pode criar, ler, atualizar e excluir dados em um banco de dados.


## Pré-requisito

<p float="left">
    <img src="https://github.com/samuelBarreto/Estudo/blob/main/imagem/Spring%20Boot%20Project%20Structure.PNG" width="500" />
</p>

 o que você precisa ter no seu Desktop 
   
   - git
   - Java 17 
   - Maven
   - Banco de dados MySQL
   - docker
   - docker-compose

 Instale o cliente DATADOG APM JAVA 

 ```bash
  wget -O dd-java-agent.jar 'https://dtdg.co/latest-java-tracer'
 ```

## Execute localmente

Clonar o projeto

```bash
  git clone https://github.com/samuelBarreto/Estudo.git
```

Vá para o diretório do projeto

```bash
  cd Estudo
```

Instalar dependências

```bash
  mvn mvn clean install
```

start o docker-composer

```bash
  docker compose -f "compose.yaml" up -d --build
```
stop o docker-composer

```bash
  docker compose -f "compose.yaml" down
```



## Referência de API

Criar API REST do usuário:

URL de solicitação:  http://localhost:8080/api/users
Método HTTP: Corpo da solicitação POST :
```bash
  {
    "firstName": "teste",
    "lastName":"teste",
    "email": "teste@gmail.com"
  }
```
Consulte esta captura de tela para testar a API REST de criação de usuário:

<p float="left">
 <img src="https://github.com/samuelBarreto/Estudo/blob/main/imagem/post_user.png" width="380" />
</p>

Obtenha a API REST do usuário:
URL de solicitação:  http://localhost:8080/api/users/1
Método HTTP: GET

Consulte esta captura de tela para testar a API REST do usuário GET:

<p float="left">
 <img src="https://github.com/samuelBarreto/Estudo/blob/main/imagem/get_user_1.png" width="380" />
</p>

Atualizar API REST do usuário:
URL de solicitação:  http://localhost:8080/api/users/1
Método HTTP:  Corpo da solicitação PUT

```bash
  {
    "firstName": "teste1",
    "lastName":"teste1",
    "email": "teste1@gmail.com"
  }
```

Consulte esta captura de tela para testar a API REST de atualização do usuário:
<p float="left">
 <img src="https://github.com/samuelBarreto/Estudo/blob/main/imagem/put_user_teste1.png" width="380" />
</p>

Obtenha a API REST de todos os usuários:
URL de solicitação:  http://localhost:8080/api/users
Método HTTP: GET

Consulte esta captura de tela para testar a API REST GET All User:

<p float="left">
 <img src="https://github.com/samuelBarreto/Estudo/blob/main/imagem/get_user_all.png" width="380" />
</p>

EXCLUIR API REST do usuário:
URL de solicitação:  http://localhost:8080/api/users/1
Método HTTP: DELETE

Consulte esta captura de tela para testar a API REST de exclusão de usuário:

<p float="left">
 <img src="https://github.com/samuelBarreto/Estudo/blob/main/imagem/delete_user_1.png" width="380" />
</p>


Neste tutorial, criamos um projeto de inicialização Spring e construímos serviços da Web CRUD RESTful usando Spring Boot 3 , Spring Data JPA (Hibernate) e banco de dados MySQL Com Bibliotera cliente do APM do Datadog e tinylog para observability da aplicação 