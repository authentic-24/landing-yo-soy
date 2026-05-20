FROM nginx:alpine

# Copia toda la estructura de tu web al directorio público de Nginx
COPY . /usr/share/nginx/html

# Expone el puerto 80 que usa Nginx por defecto
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]