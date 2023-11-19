# Utiliza una imagen base de OpenJDK para Java 8
FROM openjdk:8-jdk-alpine

# Establece el directorio de trabajo en la aplicación
WORKDIR /app

# Copia el archivo JAR construido en el paso de construcción a la imagen
COPY target/ProjectFinalGroup-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto 8080 para que la aplicación sea accesible desde fuera del contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación cuando se inicia el contenedor
CMD ["java", "-jar", "app.jar"]