FROM maven:3.8.2-jdk-8 
#

COPY . .

# RUN mvn clean install

CMD java -jar target/api-sql-0.0.1-SNAPSHOT.jar

# CMD mvn spring-boot:run