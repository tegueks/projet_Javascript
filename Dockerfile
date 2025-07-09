FROM nginx: alpine

#On supprime le contenue par defaut de nginx 
RUN rm -rf /usr/share/nginx/html/*

#On copie notre code dans le dossier html de nginx
COPY . /usr/share/nginx/html

#Expose le port 80
EXPOSE 80

#On lance nginx automatiquement (inclus dans l'image)
CMD ["nginx", "-g", "daemon off;"]
