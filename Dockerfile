# Usa un JDK 21 liviano
FROM eclipse-temurin:21-jdk-alpine

# Crea un volumen temporal (opcional)
VOLUME /tmp

# Copia el JAR generado por Maven al contenedor
COPY target/*.jar app.jar

# Expone el puerto por defecto de Spring Boot
EXPOSE 8080

# Comando para arrancar la app
ENTRYPOINT ["java","-jar","/app.jar"]