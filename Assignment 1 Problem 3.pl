#!/usr/bin/perl

#Prompt user for 5 foods, create the array and store them
print "Enter your top 5 favorite foods below\n";
@foodArray;
for($i = 0; $i <= 4; $i++){
  print "Food: ";
  $food = <STDIN>;
  chomp $food;
  push @foodArray, $food;
}

#Get size of array to access last element
$foodArraySize = @foodArray;
print "This is the array of the foods you listed: @foodArray\n";
print "The first element of the food array is @foodArray[0]\n";
print "The last element of the food array is @foodArray[$foodArraySize - 1]\n";
print "The number of elements in the food array is $foodArraySize\n";

@slicedFoodArray = @foodArray[1, 2, 4];
print "This is an array slice of the food array: @slicedFoodArray\n";

@rangeFoodArray = @foodArray[2..4];
print "This is an array slice of the food array using range operator: @rangeFoodArray\n";
