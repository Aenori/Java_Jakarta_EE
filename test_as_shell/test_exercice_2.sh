#!/bin/bash
set -e

result=$(curl 'http://localhost:8080/java-web-project/FormPrenomNom' 2>/dev/null)
result_trimmed=$(echo $result | tr -d ' ')

if [ -z "$(echo $result_trimmed | grep 'action=\"Bonjour\"')" ]
then
	echo "ERROR : FormPrenomPrenom should contain an action redirecting to Bonjour"
	echo $result
  exit 1
elif [ -z "$(echo $result_trimmed | grep 'type=\"submit\"')" ]
then
	echo "ERROR : FormPrenomPrenom should contain a submit button"
	echo $result
	exit 1
elif [ -z "$(echo $result_trimmed | grep 'name=\"nom\"')" ]
then
	echo "ERROR : FormPrenomPrenom should contain an input field with name nom"
	echo $result
	exit 1
elif [ -z "$(echo $result_trimmed | grep 'name=\"prenom\"')" ]
then
	echo "ERROR : FormPrenomPrenom should contain an input field with name prenom"
	echo $result
	exit 1
fi

echo "Exercice n 2 : OK"
