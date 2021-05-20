# Explications

En inspectant la page : /?page=member

Le champ de recherche **id** est sensible aux injections SQL.

Si on entre `1 OR 1=1` comme id. La liste de tout les utilisateurs va etre affiché.

Avec SQLMAP, j'ai pu avoir acces a tout la table user.
![sqlmap](https://i.imgur.com/c0WFgY8.png)

On voit que le dernier user est le flag.

# Protection
En préparant ses requêtes 

Exemple: 
```java
String sql = "SELECT * FROM users WHERE email = ?";

// Run the query, passing the 'email' parameter value...
ResultSet results = stmt.executeQuery(sql, email);
```
