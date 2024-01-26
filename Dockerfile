# Utilisez une image de base avec Maven
FROM maven:3.8-openjdk-11
# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez le fichier pom.xml pour télécharger les dépendances Maven
COPY pom.xml .

