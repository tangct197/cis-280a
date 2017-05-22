#!/usr/bin/perl

print "Enter an integer value: ";
$firstInt = <STDIN>;
print "Enter an integer value: ";
$secondInt = <STDIN>;
chomp $firstInt;
chomp $secondInt;
if($firstInt % $secondInt == 0){
  print "$firstInt is a multiple of $secondInt";
}elsif($secondInt % $firstInt == 0){
  print "$secondInt is a multiple of $firstInt";
}else{
  print "Neither $firstInt or $secondInt are multiples of each other.";
}
