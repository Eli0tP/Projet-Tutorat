CREATE TABLE IF NOT EXISTS "Permissions" (
	"id_permission"	INTEGER,
	"Role"	TEXT,
	PRIMARY KEY("id_permission")
);

CREATE TABLE IF NOT EXISTS "Classe" (
	"id_classe"	INTEGER,
	"classe"	TEXT,
	PRIMARY KEY("id_classe" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Personnes" (
	"id_personne"	INTEGER,
	"Nom"	TEXT,
	"Prenom"	TEXT,
	"Classe"	TEXT,
	"Email"	TEXT,
	"Password"	TEXT,
	"id_permission"	INTEGER,
	PRIMARY KEY("id_personne" AUTOINCREMENT)
);

CREATE TABLE IF NOT EXISTS "Aide" (
	"id_personne"	INTEGER,
	"id_classe"	TEXT,
	"Matiere"	TEXT,
	"Contact"	TEXT,
	"Informations"	TEXT,
	"id_aide"	INTEGER,
	PRIMARY KEY("id_aide" AUTOINCREMENT)
);

INSERT OR IGNORE INTO "Permissions" ("id_permission", "Role") VALUES (1, 'eleve'), (2, 'mentor'), (3, 'admin');
INSERT INTO "Classe" ("classe") VALUES ('Seconde'), ('Premiere'), ('Terminale');
