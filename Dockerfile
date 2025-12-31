FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/conf.d/ /etc/nginx/conf.d/

COPY html /usr/share/nginx/html/
COPY servico1 /usr/share/nginx/servico1/
COPY servico2 /usr/share/nginx/servico2/
COPY performance /usr/share/nginx/performance/
COPY local /usr/share/localssl/

EXPOSE 80
EXPOSE 8001
EXPOSE 8002
EXPOSE 8003
EXPOSE 8005