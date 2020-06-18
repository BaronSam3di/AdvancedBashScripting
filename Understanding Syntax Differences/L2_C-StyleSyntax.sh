#!/bin/bash
echo 'Want to see what this code will do? 

#!/bin/bash
# Display message 10 times 
for (( i = 0; i < 10 ; i++)); do
    echo "Welcome $i times"
done

---- Press enter to find out ----
'
read

# Display message 10 times 
for (( i = 0; i < 10 ; i++)); do
    echo "Welcome $i times"
done

echo "---- Press enter when you are ready to move on ----"
read
echo ' 
-----------------------------------------------------
How about this code ? 

#!/bin/bash
# define an array called cars

cars=("Ford" "Jaguar" "Geely" "Daf" "BMW" "Kia" "Opel")

len=${#cars[*]}         # get total elements in an array

# print it
for (( i=0; i<${len}; i++ ));
do
    echo "${cars[$i]}"
done

---- Press enter to find out ----
'
read

# define an array called cars

cars=("Ford" "Jaguar" "Geely" "Daf" "BMW" "Kia" "Opel")

len=${#cars[*]}         # get total elements in an array

# print it
for (( i=0; i<${len}; i++ ));
do
    echo "${cars[$i]}"
done

echo "---- Press enter when you are ready to move on ----"
read

echo '
-----------------------------------------------------'
