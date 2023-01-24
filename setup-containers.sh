#!/bin/bash

echo Kerem valassza ki, hogy melyik szolgaltatast szeretne telepiteni a Dockerhez!
echo FIGYELEM! Ez a program a felsoroltakbol a legujabb verziot hasznalja!
echo 1. MySQL 2. PostgreSQL 3. Http/Https.

read -p 'Sorszam: ' serviceCode

function readCredentials {
  read -p 'Container neve: ' containerName
  read -p 'Felhasznalonev: ' username
  read -p 'Jelszo: ' password
  read -p 'Alap adatbazis neve: ' baseDB
}

if [ $((serviceCode)) -eq 1 ] 
then
  readCredentials
  echo $containerName
  echo $username
  echo $password
  echo $baseDB
  docker run --name $containerName -e MYSQL_ROOT_PASSWORD=$password MYSQL_USER=$username MYSQL_PASSWORD=$password MYSQL_DATABASE=$baseDB mysql:8.0 -d 
elif [ $((serviceCode)) -eq 2 ]
then
  echo PostgreSQL

elif [ $((serviceCode)) -eq 3 ]
then
  echo Http/Https
elif [ $((serviceCode)) -gt 3 ]
then
  echo Nincs ilyen szolgaltatas a listaban
fi