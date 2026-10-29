# Projet Mentorat — plateforme de tutorat scolaire

Application web réalisée au lycée Saint-André (Niort) pour mettre en relation des élèves qui ont besoin d'aide
avec des élèves mentors.

## Fonctionnalités

- Inscription et connexion, avec trois rôles : **élève**, **mentor** et **administrateur**
- Espace élève : dépôt d'une demande d'aide (matière, moyen de contact, détails), candidature pour devenir mentor
- Espace mentor : accueil et consultation des demandes
- Espace administrateur : liste des mentors
- Base de données SQLite (personnes, classes, rôles, demandes d'aide)

## Technologies

Python · Flask · SQLite · HTML / CSS (templates Jinja)

## Lancer le projet

```bash
pip install -r requirements.txt
python -c "import sqlite3; sqlite3.connect('bdd/BDD_Mentorat').executescript(open('bdd/schema.sql').read())"
python main.py
```

Le site est ensuite accessible sur http://127.0.0.1:1664.

## Structure

```
main.py          routes Flask
bdd.py           accès à la base SQLite
bdd/schema.sql   structure de la base
templates/       pages HTML
static/          CSS et images
TODO.md          cahier des charges et fonctionnalités prévues
```

## Pistes d'amélioration

Projet de lycée, laissé en l'état :

- les pages mentor « aide », « aider un élève » et « infos » ne sont pas terminées
- les mots de passe sont stockés en clair : il faudrait les hacher (`werkzeug.security`)
- les requêtes SQL sont construites par f-strings : il faudrait des requêtes paramétrées pour éviter les injections SQL
