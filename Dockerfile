FROM openjdk:17-jdk-slim

COPY . .

CMD java -jar   -javaagent:dd-java-agent.jar -Ddd.service=api-sql -Ddd.env=dev   -Ddd.logs.injection=true  -Dtinylog.configuration=/tinylog/tinylog.properties target/api-sql-0.0.1-SNAPSHOT.jar
