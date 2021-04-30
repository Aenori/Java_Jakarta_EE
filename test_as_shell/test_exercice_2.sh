#!/bin/bash
set -e

source test_as_shell/helper_function_test.sh

result=$(curl 'http://localhost:8080/java-web-project/FormPrenomNom' 2>/dev/null)
result_trimmed=$(echo $result | tr -d ' ')

test_form_page "$testname" "$result_trimmed" "Bonjour"
test_form_input "$testname" "$result_trimmed" "prenom"
test_form_input "$testname" "$result_trimmed" "nom"

echo "Exercice n 2 : OK"
