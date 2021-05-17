#!/bin/bash
tab = ('password' ,'123456' ,'12345678' ,'qwerty' ,'abc123', 'monkey' ,'1234567', 'letmein', 'trustno1', 'dragon', 'baseball' ,'111111' ,'iloveyou', 'master' ,'sunshine' ,'ashley' ,'bailey', 'passw0rd' ,'shadow' ,'123123' ,'654321' ,'superman', 'qazwsx' ,'michael', 'Football' ,'123qwe' ,'55555', 'admin', 'flower')

for i in ${tab[@]}; do
  echo -n tab[$i];
done