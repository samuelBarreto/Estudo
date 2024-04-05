
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
