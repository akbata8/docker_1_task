FROM eclipse-temurin:17-jdk-jammy
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /spring-petclinic
RUN ./mvnw package
CMD java -jar target/*.jar