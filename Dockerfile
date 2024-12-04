# Étape 1 : Utiliser une image de base Python
FROM python:3.11-slim

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier le fichier requirements.txt dans le conteneur
COPY app/ .

# Étape 4 : Installer les dépendances à partir de requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Copier le reste de l'application dans le conteneur
#COPY app/ .

# Étape 6 : Exposer le port de l'application (port Flask)
EXPOSE 5000

# Étape 7 : Définir la commande pour démarrer l'application Flask
CMD ["python", "app.py"]
