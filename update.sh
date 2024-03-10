#!/bin/bash
while true
do 
echo "PLEASE CHOOSE NOTE NAME TO UPDATE.."
cd ../notes
files=$(ls)
echo "$files"

read note_name
echo " "
if [[ ! -f "$note_name" ]];
then
    echo "NOT AVAILABLE NOTE.."
    
else 
    
    cat $note_name    
    echo " "    
    select choice in ADD REPLACE FIND EXIT
    do
    case $choice in 
        ADD )
            echo "please ADD what you want : "
            read text
            echo $text >> $note_name
            continue
            ;;
        REPLACE )
            echo "please write from the start : "
            read textt
            echo $textt > $note_name
            continue
            ;;
        FIND )
            echo "PLEASE, write the word you are looking for :"
            read word 
            cd ../
            grep -r "$word" notes 
            continue
            ;;   
        EXIT )
            cd ../main_note
            /home/dina/Desktop/taking_note_app/main_note/note.sh
            break ;;    
        * )
            echo "WRONG CHOICE YOU WILL EXIT"
            break ;;    
    esac
    done   


fi
done