FROM openjdk:17-jdk-slim
# maven:3.8.2-jdk-8 
#

COPY . .

# RUN mvn clean install

CMD java -jar   -javaagent:dd-java-agent.jar -Ddd.service=api-sql -Ddd.env=dev   -Ddd.logs.injection=true  -Dtinylog.configuration=/tinylog/tinylog.properties target/api-sql-0.0.1-SNAPSHOT.jar
# java -jar  -Dtinylog.configuration=/tinylog/configuration.properties target/api-sql-0.0.1-SNAPSHOT.jar
# CMD mvn spring-boot:run

# java -jar   -javaagent:dd-java-agent.jar -Ddd.service=api-sql -Ddd.env=dev   -Ddd.logs.injection=true  -Dtinylog.configuration=/tinylog/tinylog.properties target/api-sql-0.0.1-SNAPSHOT.jar
