#!/bin/bash 

while true
do
echo "PLEASE ENTER THE NOTE NAME TO SHOW :"
cd ../notes
files=$(ls)
echo ""
echo "$files"
echo ""
read note_name

echo ""

if [[ ! -f "$note_name" ]];
then 
    echo "SORRY, NOT AVAILABLE NOTE "
    echo ""
else    

    echo ""
    cat $note_name
    echo ""
    echo "to return to main page choose : main / to continue choose : c "
    echo "-->"
    read "main"
    if [[ $main == "main" ]];
    then 
        cd ../main_note
        /home/dina/Desktop/taking_note_app/main_note/note.sh
        exit 0
    elif [[ $main == "c" ]];
    then 
        cd ../notes 
        /home/dina/Desktop/taking_note_app/main_note/show.sh  
        exit   
    else   
        echo "ERROR"
        break 
      
    fi    
     
fi



done     