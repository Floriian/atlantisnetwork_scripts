#!/bin/bash

echo Kerem valassza ki, hogy melyik szolgaltatast szeretne telepiteni a Dockerhez!
echo 1. MySQL 2. PostgreSQL 3. Http/Https.

read -p 'Sorszam: ' serviceCode

if [ $((serviceCode)) -eq 1 ] 
then
  echo MySQL

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