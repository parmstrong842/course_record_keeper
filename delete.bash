echo Enter a course department code and number:
counter=0
read dCode cNumber
if test -f ./data/"${dCode^^}$cNumber".crs; then
    while read line; do
        if [ "$counter" = 1 ]; then
            cName="$line"
            break
        fi
        ((counter = counter + 1))
    done <./data/"${dCode^^}$cNumber".crs
    rm ./data/"${dCode^^}$cNumber".crs
    echo "[`date`] DELETED: ${dCode^^} $cNumber $cName" >>./data/queries.log
    echo "$cNumber was successfully deleted."
else
    echo ERROR: course not found
fi
