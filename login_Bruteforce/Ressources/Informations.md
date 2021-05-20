# Explications

Sur la page : 

/?page=signin

On va trouver les identifiants de connexion script de brute force.
Comme liste de mot de passe, on va utiliser la liste des mots de passe les plus courants de wikipedia : https://fr.wikipedia.org/wiki/Liste_des_mots_de_passe_les_plus_courants

Grace au script **bruteforce**, on va tester chaque mot de passe sur la page de connexion
`http://192.168.1.11/page=signin&username=admin&password=password&Login=Login"`

On découvre que le mot de passe est **shadow**
   
# Protection
Plusieurs options:

 - Ne pas mettre des mots de passe trop simples. 
- Un maximum d'essai de connexion.
-Une authentification à deux facteurs
