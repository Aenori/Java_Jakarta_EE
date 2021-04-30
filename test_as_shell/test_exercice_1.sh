#!/bin/bash
set -e

if [ -n "$(curl 'http://localhost:8080/java-web-project/Bonjour?nom=Snow&prenom=John' 2>/dev/null | grep 'Bonjour John Snow')" ]
then
	echo "Exercice n 1 : test case 1 OK"
else
	echo "Exercice n 1 : test case 1 Failed !"
	curl "http://localhost:8080/java-web-project/Bonjour?nom=Snow&prenom=John"

	exit 1
fi

if [ -n "$(curl 'http://localhost:8080/java-web-project/Bonjour?nom=Vetinari&prenom=Havelock' 2>/dev/null | grep 'Bonjour Havelock Vetinari')" ]
then
	echo "Exercice n 1 : test case 2 OK"
else
	echo "Exercice n 1 : test case 2 Failed !"
	curl 'http://localhost:8080/java-web-project/Bonjour?nom=Vetinari&prenom=Havelock'
	
	exit 1
fi