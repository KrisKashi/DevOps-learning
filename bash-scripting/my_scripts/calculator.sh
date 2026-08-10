#!/bin/bash

# Task : Create a script that takes two numbers as input and performs basic arithmetic operations (addition, subtraction, multiplication, division). Handle dividing by zero.


calculate(){
    
    local num1 # Sets Variables so we can later take user input
    local num2

    echo "Please enter number one:"
    read num1 # Takes input from user for number 1
    echo "Please enter number two:"
    read num2 # Takes input from user for number 2 

    echo "$num1 + $num2 is:" $(( num1 + num2 ))
    echo "$num1 - $num2 is:" $(( num1 - num2 ))
    echo "$num1 * $num2 is:" $(( num1 * num2 ))
    if [ $num2 == 0 ];then
        echo "Skipping Divison: cannot divide by zero". # This code block handles dividing by zero errors 
    else
        echo "$num1 / $num2 is :" $(( num1 / num2 ))
    fi    


}

calculate


# Future improvemtents : Handle non numeric values by data sanitsation