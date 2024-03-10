#!/bin/bash
echo "PLEASE CHOOSE NOTE NAME TO BE DELETED .."
cd ../notes
files=$(ls)
echo "$files"
read note_name

if [[ $(find . -type f -name $note_name) ]]; 
then 
    echo "ARE YOU SURE TO DELETE $note_name ?? y/n "
    read confirm
    if [[ "$confirm" == "y" ]];
    then
        rm $note_name
        echo " DONE, NOTE IS DELETED "
        
    elif [[ "$confirm" == "n" ]];
    then 
        echo " CANCELED "
        exit
    else 
        echo "invalid answer"     
        exit
    fi
else
    echo "SORRY,NOT AVAILABLE NOTE "  
    exit   
fi