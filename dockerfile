# 1. Choisir une image de base
FROM ubuntu:latest

# 3. Mettre à jour le système et installer des paquets
RUN apt update && apt install -y curl

RUN apt install apache2 -y

# 4. Copier des fichiers locaux vers l'image
COPY index.html /var/www/html

# 6. Exposer un port (si nécessaire)
EXPOSE 80

# 7. Définir la commande à exécuter lors du démarrage du conteneur
CMD ["echo", "Hello, Docker!"]

