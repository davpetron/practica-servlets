# ---- Etapa 1: compilación ----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -q dependency:go-offline
COPY src ./src
RUN mvn -q clean package

# ---- Etapa 2: despliegue ----
FROM tomcat:10.1-jdk17-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/practica-servlets.war \
     /usr/local/tomcat/webapps/ROOT.war

# Habilitar depuración remota (puerto 5005)
ENV JPDA_ADDRESS=*:5005
ENV JPDA_TRANSPORT=dt_socket

EXPOSE 8080 5005
CMD ["catalina.sh", "jpda", "run"]