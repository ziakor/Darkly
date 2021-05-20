# Explications

En inspectant les cookies, on voit qu'il y a un cookie avec une clé "I_am_admin".
En rentrant la valeur sur le site :  [identification-chiffrement](https://www.dcode.fr/identification-chiffrement)
On voit qu'elle est chiffrée en md5.

    68934A3E9455FA72420237EB05902327 = false

On peut remplacer cette valeur par true en md5 pour que le site nous considère comme admin.

    b326b5062b2f0e69046810717534cb09 = true

# Protection

Eviter d'utiliser un cookie pour  verifier si l'utilisateur est admin.
Il vaut mieux utiliser un token est verifier en back si l'utilisateur est bien admin.
