read dCode
read dName
read cNumber
read cName
read days
read cStart
read cEnd
read cHours
read cEnrollment
if test -f ./data/"${dCode^^}$cNumber".crs; then
    echo ERROR: course already exists
else
    >./data/"${dCode^^}$cNumber".crs
    echo -e "${dCode^^} $dName\n$cName\n$days $cStart $cEnd\n$cHours\n$cEnrollment" > ./data/"${dCode^^}$cNumber".crs
    echo "[`date`] CREATED: ${dCode^^} $cNumber $cName" >> ./data/queries.log
fi
