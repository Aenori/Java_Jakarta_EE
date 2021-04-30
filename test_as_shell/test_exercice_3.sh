#!/bin/bash
set -e

source test_as_shell/helper_function_test.sh

result=$(curl 'http://localhost:8080/java-web-project/FormPrenomNomDefault' 2>/dev/null)
result_trimmed=$(echo $result | tr -d ' ')

test_form_page "$testname" "$result_trimmed" ""
test_form_input "$testname" "$result_trimmed" "prenom"
test_form_input "$testname" "$result_trimmed" "nom"


if [ -n "$(curl -X POST 'http://localhost:8080/java-web-project/FormPrenomNomDefault' 2>/dev/null | grep 'Bonjour John Doe')" ]
then
	echo "Exercice n 3 : test case 2 OK"
else
	echo "Exercice n 3 : test case 2 Failed !"
	curl -X POST 'http://localhost:8080/java-web-project/FormPrenomNomDefault' 2>/dev/null
	
	exit 1
fi

if [ -n "$(curl -X POST -d 'nom=Vetinari' 'http://localhost:8080/java-web-project/FormPrenomNomDefault' 2>/dev/null | grep 'Bonjour John Vetinari')" ]
then
	echo "Exercice n 3 : test case 3 OK"
else
	echo "Exercice n 3 : test case 3 Failed !"
	curl -X POST -d 'nom=Vetinari' 'http://localhost:8080/java-web-project/FormPrenomNomDefault' 2>/dev/null
	
	exit 1
fi

echo "Exercice n 3 : OK"
