# api_regioes_meioambiente

Para rodar com o maven:

mvn spring-boot:run

Para rodar com o docker:

mvn package spring-boot:repackage
docker build -t backend-api .
docker run -p 8080:8080 backend-api

