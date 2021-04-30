#!/bin/bash
set -e

result=$(curl 'http://localhost:8080/java-web-project/FormPrenomNomDefault' 2>/dev/null)
result_trimmed=$(echo $result | tr -d ' ')

source test_as_shell/helper_function_test.sh

test_form_page "$testname" "$result_trimmed" ""
test_form_input "$testname" $result_trimmed "prenom"
test_form_input "$testname" $result_trimmed "nom"

echo "Exercice n 3 : OK"
