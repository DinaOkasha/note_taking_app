echo "WELCOME TO OUT NOTE_APP ! "

select choice in CREATE_NOTE LIST_NOTE DELETE_NOTE UPDATE_NOTE SHOW_NOTE EXIT
do 
case $choice in 

    CREATE_NOTE )
        echo ""
        ./create_note.sh
        break ;;

    LIST_NOTE )
        echo ""
        ./list.sh
        break ;;

    DELETE_NOTE )
        echo ""
        ./delete.sh 
        break ;;

    UPDATE_NOTE )
        echo ""
        ./update.sh
        break ;;
    SHOW_NOTE )
        echo ""
        ./show.sh 
        break ;;
    EXIT )
        break ;;    
    * )
        echo "WRONG CHOICE"
        break ;;

esac
done