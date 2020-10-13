readVars () {
    read dCode dName
    read cName
    read cDays cStart cEnd
    read cHours
    read cEnrollment
}

echo Enter a course department code and number:
read dCode cNumber
echo Enter an enrollment change amount:
read change
if test -f ./data/"${dCode^^}$cNumber".crs; then
    readVars <./data/"${dCode^^}$cNumber".crs
    ((cEnrollment = cEnrollment + change))
    rm ./data/"${dCode^^}$cNumber".crs
    echo -e "${dCode^^} $dName\n$cName\n$cDays $cStart $cEnd\n$cHours\n$cEnrollment" >./data/"${dCode^^}$cNumber".crs
    echo "[`date`] ENROLLMENT: ${dCode^^} $cNumber $cName changed by $change" >>./data/queries.log
else
    echo ERROR: course not found
fi
