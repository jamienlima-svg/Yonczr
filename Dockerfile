# Imagen base
FROM ubuntu:22.04

# Instalar dependencias
RUN apt update && \
    apt install -y python3 curl wget git && \
    apt clean

# Crear app dummy
WORKDIR /app
RUN echo "Servidor Docker en Railway activo" > index.html

# Exponer un puerto (Railway requiere uno)
EXPOSE 8080

# Mantener el contenedor vivo (puedes cambiar por tu app real)
CMD ["python3", "-m", "http.server", "8080"]
