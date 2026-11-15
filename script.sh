#!/bin/bash
<<h
function
h
function cr_fn {

echo "=====================adduser started============================"

read -p "enter username: " username
read -p "enter passsword: " password

sudo useradd -m $username

echo -e "$password\n$password" | sudo passwd $username

echo "=====================adduser completed==========================="

#userdel started 
<<l
echo "=====================userdel started ============================"
sudo userdel $username

echo "=====================userdel successful==========================="
l
#check user is exists or not 
echo "=====================check user started==========================="

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "user not exist"
else
	echo "user exist"
fi
<<k
echo "as wc is 0 the user is deleted"

echo "=====================check user successful========================" 
k
}
<<info
loop
info
for (( i=1 ; i<=4 ; i++ ))
do
	cr_fn
done

