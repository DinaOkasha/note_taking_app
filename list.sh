echo "WELCOME TO OUT NOTE_APP AGAIN ! "

cd ../notes 

files=$(ls)
if [[ -z "$files" ]];
then  
    echo "OPS...NO NOTES AVAILABLE " 
else 
    echo "Existing NOTES :"
    echo "$files"
fi    
echo "to return to main page choose : main "
echo "-->"
read "main"
if [[ $main == "main" ]];
then 
    cd ../main_note
    /home/dina/Desktop/taking_note_app/main_note/note.sh
else   
    cd ../notes 
    /home/dina/Desktop/taking_note_app/main_note/list.sh
fi    
        