#!/bin/bash
echo "WELCOME TO OUT NOTE_APP AGAIN ! "
cd ../notes
 
while true
do 
echo "please enter your note name .."
read note_name 

case $note_name in
    '' )
        echo "you should choose a name"
        continue ;;
    [[:space:]]* | *[[:space:]]* | [[:space:]]* )
        echo "you shouldnot use spaces"
        continue ;;

    *[a-zA-Z_]*[a-zA-Z_] | *[a-zA-Z_]*[a-zA-Z_]*[0-9] )
        if [[ $(find . -type f -name $note_name) ]];
        then
            echo "ALREADY EXISTING NOTE NAME.."
        else    
            touch $note_name
            echo " NOTE has been created successfully "
            echo "to return to main page choose : main "
            read "main"
            if [[ $main == "main" ]];
            then 
                cd ../main_note
                /home/dina/Desktop/taking_note_app/main_note/note.sh
                exit 
            else   
                cd ../notes 
                /home/dina/Desktop/taking_note_app/main_note/create_note.sh
                
            fi    
        

        fi    
        continue ;;
    [0-9]* | [0-9]*[0-9]* )
        echo "name should not contain nombers only" 
        continue ;;
    * )
        echo " invalid name "

        break ;;

esac

done



