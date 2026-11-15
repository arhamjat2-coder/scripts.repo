#!/bin/bash

<<mlc
create a user by arguments
mlc


echo "file name:$0"
echo "user name:$1"
echo "password :$2"
sudo useradd -m $1

echo -e "$2\n$2" | sudo passwd $1

