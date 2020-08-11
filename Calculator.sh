#!/bin/bash

echo "Put two numbers: "
read a
read b

echo "               "
echo "---------------"
echo "               "

echo "Enter a choice: "
echo "1) Addition"
echo "2) Subtraction"
echo "3) Multiplication"
echo "4) Division"
read op

echo "              "

case $op in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
esac
echo "Result = $res"
