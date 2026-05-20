FROM nginx:alpine

# Cambiamos la configuración interna de Nginx de 80 a 8080
RUN sed -i 's/listen\.+80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

# Exponemos el puerto que Cloud Run quiere ver
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]