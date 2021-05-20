# Explications

En allant sur le fichier robot.txt, on vois qu'il contient les choses suivantes:

    User-agent: *
	Disallow: /whatever
	Disallow: /.hidden

Dans le dossier /whatever, il y a un fichier htpasswd.
À l'interieur, il  ya un couple login/password:

    root:8621ffdbc5698829397d97767ac13db3
Le mot de passe est en md5 : **dragon**

en allant sur la page /admin, on peut se connecter avec ces identifiants.

   
# Protection

Eviter de mettre les identifiants admin sur un fichier accessible par n'importe quel utilisateur.
