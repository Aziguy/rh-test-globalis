## Présentation

Le projet permet d'administrer une liste d'évènements et les inscriptions à ces évènements, dans une interface d'administration WordPress.

Pour les instructions d'installation, voir le README.md à la racine du projet.

## Anomalie 1

Corriger l'anomalie suivante :

- Dans l'administration, dans la liste des évènements, la colonne "Registrations" devrait afficher, pour chaque évènement, son nombre d'inscrits, mais elle affiche toujours 0.

## Anomalie 2

Corriger l'anomalie suivante :

- Les noms et prénoms des inscrits sont exposés via le frontend du site, alors qu'il s'agit d'informations confidentielles. Par exemple, dans le jeu de données de test, l'URL `<your-local-url>/registrations/29-foo-bar/` expose le nom et le prénom de l'inscrit. On veut à la place renvoyer un statut HTTP 404.

## Fonctionnalité 1

Implémenter la fonctionnalité suivante :

- Quand on créée une inscription dans l’administration, on veut que cela envoie un mail à l’adresse de l’inscrit, reprenant les informations de l’évènement, avec le billet d’entrée PDF en pièce-jointe
- Pour cette fonctionnalité, ne pas utiliser d’extension WordPress ni de package composer.

## Fonctionnalité 2

Implémenter la fonctionnalité suivante :

- Sur la vue liste des évènements (back-office), ajouter une colonne “Export”.
- Dans cette colonne, ajouter des boutons “Export” qui déclenchent le téléchargement d’un fichier excel contenant les l’ensemble des inscrits à l’évènement concerné.
- Fichier excel : 1 ligne = 1 inscrit. Colonnes : Nom, Prénom, Email, Téléphone.
- Pour écrire le fichier excel, utiliser le package PHP openspout/openspout, et aucune extension WordPress.

## Livrable

- Fournir l'URL de votre repo git public contenant le code
- Livrer chaque exercice sur une branche dédiée (par exemple : ***bugfix_1***, ***bugfix_2***, ***feature_1***, ***feature_2***)
