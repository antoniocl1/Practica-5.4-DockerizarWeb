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
