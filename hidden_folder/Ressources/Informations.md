# Explications

En allant sur le fichier robot.txt, on vois qu'il contient les choses suivantes:

    User-agent: *
	Disallow: /whatever
	Disallow: /.hidden

Dans le dossier .hidden, il y a beaucoup de dossier. Il y a peut-être des fichiers exploitables.
Grace a la commande wget, on va pouvoir télécharger tout le contenu du dossier .hidden

    wget -e robots=off -r  --no-parent -A "README"  http://192.168.1.11/.hidden/

Si on regarde dans le dossier hidden il y a un plusieurs fichier README qui contient 

    Tu veux de l'aide ? Moi aussi !  
Avec la commande find et grep, on va rechercher un flag dans tout les README

    find . -type f -name '*README' -exec grep '[0-9]' {} ';'

   
# Protection

Il vaut mieux utiliser un htaccess pour protéger des fichiers, si l'objectif du .hidden était de faire ca.
