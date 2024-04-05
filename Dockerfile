FROM maven:3.8.5-openjdk-17-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean install


FROM openjdk:17-jdk-slim
WORKDIR /app

COPY --from=build /app/target/api-sql-0.0.1-SNAPSHOT.jar api-sql.jar
COPY --from=build  /app/dd-java-agent.jar  dd-java-agent.jar
COPY --from=build  /app/tinylog /tinylog
RUN ls -la

CMD java -jar   -Dtinylog.configuration=/tinylog/tinylog.properties ./api-sql.jar
#  java -jar -javaagent:dd-java-agent.jar -Ddd.service=api-sql -Ddd.env=dev -Ddd.logs.injection=true  -Dtinylog.configuration=/tinylog/tinylog.properties target/api-sql-0.0.1-SNAPSHOT.jar
