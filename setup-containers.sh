#!/bin/bash

echo Kerem valassza ki, hogy melyik szolgaltatast szeretne telepiteni a Dockerhez!
echo 1. MySQL 2. PostgreSQL 3. Http/Https.

read -p 'Sorszam: ' serviceCode

function readCredentials {
  read -p 'Felhasznalonev: ' username
  read -p 'Jelszo: ' password
  read -p 'Alap adatbazis neve: ' baseDB
}

if [ $((serviceCode)) -eq 1 ] 
then
  readCredentials
  echo $username
  echo $password
  echo $baseDB

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