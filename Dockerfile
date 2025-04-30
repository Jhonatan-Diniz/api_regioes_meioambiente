FROM openjdk:17
run mkdir /app
WORKDIR /app
COPY ./target/backend1-1.0-SNAPSHOT.jar /app/backend_app.jar
COPY database/regioes.db /app/database/regioes.db
EXPOSE 8080
CMD ["java", "-jar", "/app/backend_app.jar"]
