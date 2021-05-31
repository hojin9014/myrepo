#!/bin/sh

inputs() {
 echo Enter two integers: 
 read int1
 read int2

}
exitPrompt(){
 read -p "Do you wish to continue? [y]es or [n]o: " ans
if [ $ans == 'n' ]
 then
echo "Exiting the script. Have a nice day!"
 break
else
 echo okay
 fi
done
}
while (true)
do
 clear
 printf "Choose from the following operations: \n"
 printf "[a]Addition [b]Subtraction [c] Multiplication [d]Division\n"
 read -p "### Your choice: " choice
 case $choice in
 [aA])
 inputs
 res=$((int1+int2))
 ;;
 ... 나머지 연산은 여러분이 작성하시오.
 *)
 res=0
 echo "wrong choice!"
 esac
 echo "The result is: " $res
 exitPrompt
done
