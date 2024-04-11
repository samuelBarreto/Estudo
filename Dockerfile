FROM maven:3.8.5-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:17-jdk-alpine
WORKDIR /app

COPY --from=build /app/target/api-sql-0.0.1-SNAPSHOT.jar api-sql.jar
COPY --from=build app/tinylog/tinylog.properties  tinylog.properties
RUN wget -O dd-java-agent.jar 'https://dtdg.co/latest-java-tracer'

ENTRYPOINT java -javaagent:dd-java-agent.jar -Ddd.agent.host=datadog-agent -Ddd.agent.port=8126 -Dtinylog.configuration=tinylog.properties -jar ./api-sql.jar
