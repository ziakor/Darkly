# Explications

En inspectant la page : /?page=searchimg

Le champ de recherche **id** est sensible aux injections SQL.

Si on entre `1 OR 1=1` comme id on a la liste de toute les images.

Avec SQLMAP, j'ai pu avoir accès a toute la table **list_images**.
![list_images](https://i.imgur.com/BhTqNGt.png)

On voit que le user avec l'id 5 est le flag.
# Protection
En préparant ses requêtes 

Exemple: 
```java
String sql = "SELECT * FROM users WHERE email = ?";

// Run the query, passing the 'email' parameter value...
ResultSet results = stmt.executeQuery(sql, email);
```
