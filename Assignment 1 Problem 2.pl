#!/usr/bin/perl

#Integer array
@numbers = (10, 20, 30, 40, 55, 67, 98, 34, 71, 13, 82);

print "Array: @numbers\n";

#Two ways to print out size of array, first way using scalar
#second way setting array to a variable
#Printing out the size of the array
#print "The size of the array is " , scalar @numbers, "\n";

#Printing out the size of the array
$arraySize = @numbers;
print "The size of the array is $arraySize\n";

#Sum the integers in the array
$sum = 0;
foreach $n (@numbers){
  $sum += $n;
}

print "The sum is $sum\n";

#Print the average of the inegers in the array
print "The average is " , $sum/$arraySize, "\n";

#Sort the array and print out the 5 largest integers
@sortedNums = sort @numbers;
print "The 5 largest integers are: ";
for($i = $arraySize; $i >= $arraySize - 5;  $i--) {
   print " $sortedNums[$i]";
}
