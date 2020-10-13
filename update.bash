readVars () {
    read dCodeO dNameO
    read cNameO
    read cDaysO cStartO cEndO
    read cHoursO
    read cEnrollmentO
}

read dCode
read dNameN
read cNumber
read cNameN
read cDaysN
read cStartN
read cEndN
read cHoursN
read cEnrollmentN
if test -f ./data/"${dCode^^}$cNumber".crs; then
    readVars <./data/"${dCode^^}$cNumber".crs
    if [ "$dNameN" == "" ]; then dNameN="$dNameO"; fi
    if [ "$cNameN" == "" ]; then cNameN="$cNameO"; fi
    if [ "$cDaysN" == "" ]; then cDaysN="$cDaysO"; fi
    if [ "$cStartN" == "" ]; then cStartN="$cStartO"; fi
    if [ "$cEndN" == "" ]; then cEndN="$cEndO"; fi
    if [ "$cHoursN" == "" ]; then cHoursN="$cHoursO"; fi
    if [ "$cEnrollmentN" == "" ]; then cEnrollmentN="$cEnrollmentO"; fi
    rm ./data/"${dCode^^}$cNumber".crs
    echo -e "${dCode^^} $dNameN\n$cNameN\n$cDaysN $cStartN $cEndN\n$cHoursN\n$cEnrollmentN" >./data/"${dCode^^}$cNumber".crs
    echo "[`date`] UPDATED: ${dCode^^} $cNumber $cNameN" >>./data/queries.log
else
    echo ERROR: course not found
fi
