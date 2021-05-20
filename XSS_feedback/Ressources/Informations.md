# Explications

Sur la page : /?page=feedback

On peut écrire `<script>alert('bonjour')</script>` en commentaire.

Ca montre la presence d'une faille XSS


# Protection
Il suffit d'utiliser des fonctions pour échapper certains caractères(&,<, >, ", ',etc...) avant de stocker les données sur le serveur;

