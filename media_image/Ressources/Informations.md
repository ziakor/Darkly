# Explications

Sur la page : /?page=media&src=nsa

L'image nsa_prism.jpg est une image dans une balise object.
Dans le champ data, il y a l'url de l'image transmise par le champ src de la page.

Dans un champ data, on peut mettre des données en base64.

en convertissant `<script>alert("42")</script>` en base64. on peut transmettre `PHNjcmlwdD5hbGVydCgiNDIiKTwvc2NyaXB0Pg` dans le champ src.

Exemple:

    http://192.168.1.11/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgiNDIiKTwvc2NyaXB0Pg

   
# Protection
Ne jamais utiliser directement les données de l'utilisateur.

