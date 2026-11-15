#!/bin/bash

#var
hero="arham"
villan="anas"

echo "film ka hero ha $hero"
echo "film ka villan ha $villan"


#user input 

read -p "hero kon ha" hero
read -p "villan kon ha" villan
read -p "director kon ha" director

#arguments


#top three heroes of film
#name heroes
echo "film name 0 $0"
echo "hero name 1 $1"
echo "hero name 2 $2"
echo "hero name 3 $3"

echo "film ka heroes ka nam ya han $@"
echo "film ka total heroes han $#"

