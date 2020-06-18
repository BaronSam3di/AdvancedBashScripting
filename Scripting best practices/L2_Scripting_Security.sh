#!/bin/bash
#
# What about rbash?
echo'

rbash stands for resticted bash. bash can be run with the bash -r CMD, which which stands for resticted.

You can use a symboloic lnk of etc/passwd wihthte CMD:

ln -s /bin/bash /bin/rbash'

echo '

what are the restrictions of rbash?

- No cd to root
- No modifications of ENV and PATH
- No functions
- NoOutput redirection
'
echo'
---------------------------------------------
---           Secutiry concerns           ---
---------------------------------------------
A script such as ...

read FOO 
read BAR
if [x$FOO = xfoo ]; then
    echo $FOO
    eval $BAR
fi


- eval is very sensitive and should be avoided. eval takes a string as an argument and trys to run it. Therefore it could open up an sub bash shell !!!
!!! Never use eval on user input !!!

- "foo = xfoo -o x" : -o will remove (x) which is the scripts ability to execute code, there fore preventing this script to execute code.
THE REMEDY:  Use quotes such as with >>>            if ["x$FOO" = "xfoo"] then

'
echo 'press enter to continue'
read

echo '
---------------------------------------------
---           Secutiry tips           ---
---------------------------------------------

- Design before you write a script: IF you have aplan then its much more likely that it will be secure.

- Always quote user input :  vars that are going to store input should be wrapped in double quotes.

- Do not use eval: It can open a subshell and allow the user to run anything!

- Make sure to protect the $PATH variable : It must not be able to be rewritten from a script.

- Use full command names like /usr/bin/time as apposed to just time, you can be sure nothing else is going to be run.

'
echo "Press enter to continue"
read

echo ' 
Whats wrong with this script...?

#/!bin/bash
#
echo which directory do you want to read
read "FOO"
echo $FOO >> myscritp.sh

chmod a+x myscritp.sh
./myscritp.sh
'
echo "Press enter to continue"
read

echo '
ANSWER:

If the user passes:  ;rm somefile , as the argument this would allow ./myscript to randomly remove files. 
They could also do a recursive delete!

The fix involves 2 steps 
 - export FOO
 - echo ls "\"\$FOO\"" >> myscriipt.sh
 
 
This forces $FOO format in the right structure to be written to myscript.sh
'