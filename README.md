# Practica-5.4 Dockerizar web estática y publicarla en Docker Hub

## 1 - Crear archivo dockerfile con la información siguiente:
```bash
FROM nginx:latest

LABEL AUTHOR="ANTONIO"
LABEL DESCRIPTION="2048"

RUN apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/josejuansanchez/2048.git /app \
    && cp -R /app/* /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

## 2 - Ejecutar el archivo dockerfile con el siguiente comando:
```bash
docker build -t antoniocl1/2048 .
```

## 3 - Conseguir un token para poder iniciar sesión en Docker Hub desde Visual Studio.
![](capturas/token.png)

## 4 - Ahora debemos iniciar sesión en Docker Hub.

```bash
docker login -u antoniocl1 # Pegaremos el token generado en el paso anterior.
```

## 5 - Publicar