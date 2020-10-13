readVars () {
    read dCode dName
    read cName
    read days cStart cEnd
    read cHours
    read cEnrollment
}
echo Enter a department code and course number:
read dCode cNumber
if test -f ./data/"${dCode^^}$cNumber".crs; then
    readVars <./data/"${dCode^^}$cNumber".crs
    echo "Course department:  ${dCode^^} $dName"
    echo "Course number:  $cNumber"
    echo "Course name:  $cName"
    echo "Scheduled days:  $days"
    echo "Course start:  $cStart"
    echo "Course end:  $cEnd"
    echo "Credit hours:  $cHours"
    echo "Enrolled students:  $cEnrollment"
else
    echo ERROR: course not found
fi
