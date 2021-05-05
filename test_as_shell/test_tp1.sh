set -eu

echo "####################"
echo " Starting tests ..."
echo "####################"

sync
set -x

bash test_as_shell/test_exercice_1.sh
bash test_as_shell/test_exercice_2.sh
bash test_as_shell/test_exercice_3.sh
# bash test_as_shell/test_exercice_4.sh
# bash test_as_shell/test_exercice_5.sh
# bash test_as_shell/test_exercice_6.sh
# bash test_as_shell/test_exercice_7.sh
# bash test_as_shell/test_exercice_8.sh

set +x
sync

echo "####################"
echo " Tests done !"
echo "####################"