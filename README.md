# AbsManager

La création d'une application de gestion des absences est un excellent moyen d'automatiser et de simplifier le processus de suivi des absences des employés dans une organisation. Voici un aperçu des fonctionnalités clés que vous pourriez inclure dans une telle application nommée AbsManager :

1) Splash Screen: Cette page de démarrage s'affiche pendant 3 secondes avec un logo en fondu, puis redirige vers la page d'accueil (HomePage). Le code utilise le package animated_splash_screen pour créer cette fonctionnalité.

2) choice Page: La fonctionnalité de la page d'accueil a pour rôle de :
Permettre à l'utilisateur de choisir entre les rôles d'étudiant et d'enseignant.
Rediriger l'utilisateur vers la page de connexion appropriée en fonction de son choix.
Offrir un accès à la page d'administration via un bouton dans la barre d'application.

3) Sign In Page: La fonctionnalité est une page de connexion dans une application mobile Flutter, avec des champs d'e-mail et de mot de passe, validation des données, bouton "Log In" pour se connecter (redirection vers la page d'accueil ou de cours en fonction du rôle), bascule de la visibilité du mot de passe, lien "Forgot password?", lien "Sign up" pour l'inscription, option de connexion Google, bouton "Retour", et gestion des données de connexion locales.

4) Sign Up : La fonctionnalité est une page d'inscription dans une application Flutter, avec des champs pour le nom, l'e-mail et le mot de passe. Les utilisateurs peuvent également accepter les politiques de confidentialité et les conditions générales. Le bouton "Log In" permet de s'inscrire, et un lien "Already have an account?" est prévu pour les utilisateurs existants. La page offre également une option de connexion avec Google et un bouton "Retour", tout en respectant le style de l'application.

5) Home Screen: La page Flutter "HomeScreen" affiche un profil utilisateur avec une liste de cours de programmation. Elle inclut une image de profil, le nom de l'utilisateur, des messages de bienvenue, et une liste de cours avec des icônes montrant si l'absence est justifiée ou pas. Les utilisateurs peuvent également accéder à leur profil complet en cliquant sur un bouton dédié. Cette page offre une expérience utilisateur pour explorer les cours disponibles et gérer leur profil.

6) Profile : La page de profil Flutter affiche une image de profil, des informations utilisateur telles que le nom, l'e-mail, le mot de passe, les absences, la confidentialité et les paramètres, avec des icônes correspondantes. Elle propose également un bouton "Logout" pour permettre à l'utilisateur de se déconnecter. Un dialogue de confirmation s'affiche lorsque l'utilisateur appuie sur "Logout".

7) CoursePage : La page Flutter "CoursePage" affiche une liste de cours pour un enseignant. Elle inclut le nom de l'enseignant, une liste de cours avec des icônes, ainsi que des horaires pour chaque cours. Les utilisateurs peuvent cliquer sur chaque cours pour accéder à plus d'informations, probablement pour afficher les étudiants inscrits, ou effectuer d'autres actions liées au cours. La page offre une expérience utilisateur pour gérer les cours en tant qu'enseignant.

8) Students list : "StudentsPage" est conçue pour afficher une liste d'étudiants avec des informations de suivi de leur présence ou absence, et permet également de rechercher des étudiants spécifiques.

9) Warranty page :  Cette page affiche les détails de la justification pour un étudiant spécifique, y compris les informations de l'étudiant, le titre de l'événement, l'heure de l'événement, le nom de l'étudiant, le programme, et une description de la justification Les utilisateurs ont la possibilité d'accepter ou de refuser la justificatioon. La mise en page est principalement axée sur l'affichage des informations de manière organisée et est conçue pour une utilisation dans une application de gestion des étudiants.


10) lib/models/localDB.dart :
Cette ppage utilise la bibliothèque sqflite en Flutter pour créer et gérer une base de données locale. Voici une explication de ses fonctionnalités :

Importations :

Le code commence par l'importation des bibliothèques nécessaires, notamment flutter/material.dart pour les widgets Flutter et sqflite/sqflite.dart pour la gestion de la base de données SQLite locale.
Création de la classe localDatabase :

Une classe nommée localDatabase est définie pour gérer la base de données locale.
Initialisation de la base de données :

La méthode initializeDB est utilisée pour initialiser la base de données. Elle prend en compte le chemin de la base de données, crée un fichier de base de données à cet emplacement et l'ouvre.

Création de la table :
Une fois la base de données initialisée, la méthode createDB est appelée pour créer une table nommée "Localdata." Cette table comporte trois colonnes : "id" (clé primaire), "email," et "password."

Ajout de données localement :
La méthode addDataLocally est utilisée pour ajouter des données à la table. Elle prend l'email et le mot de passe comme paramètres, puis les insère dans la table.

Lecture de toutes les données :
La méthode readAllData est utilisée pour lire toutes les données de la table "Localdata." Les données lues sont stockées dans la liste wholeDtatList et imprimées.

Mise à jour de données :
La méthode updateData est destinée à mettre à jour des données dans la table. Elle prend l'email et l'ID comme paramètres et exécute une requête SQL pour mettre à jour l'email correspondant à l'ID spécifié.

Suppression de données :
La méthode deleteData est utilisée pour supprimer des données de la table en fonction de l'email spécifié.

En résumé, cette classe localDatabase encapsule les opérations de base de gestion de la base de données SQLite locale, notamment l'initialisation, l'ajout, la lecture, la mise à jour et la suppression de données. Elle offre une façon de stocker et de gérer des informations localement dans une application Flutter.
