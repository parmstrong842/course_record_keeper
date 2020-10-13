while true; do
    echo Enter one of the following actions or press CTRL-D to exit.
    echo C - create a new course record
    echo R - read an existing course record
    echo U - update an existing course record
    echo D - delete an existing course record
    echo E - update enrolled student count of existing course
    echo T - show total course count
    read char
    if [ $? -eq 0 ]; then
        case ${char^^} in
            C) ./create.bash;;
            R) ./read.bash;;
            U) ./update.bash;;
            D) ./delete.bash;;
            E) ./enroll.bash;;
            T) ./total.bash;;
            *) echo ERROR: invalid option
            esac
    else
        break
    fi
done
