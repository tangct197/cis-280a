#!/usr/bin/perl
use strict;
use warnings;

#Ask user for integer to get the factorial of that integer
print "Enter an integer value: ";
my $num = <STDIN>;
chomp $num;
if($num < 0){
  print "Integer entered is negative.";
}else{
  print "The factorial of " . $num . "! is: " . factorial($num) . "\n";
}

#Subroutine for computing factorial using foreach
sub factorial{
    #shift grabs the first argument only
    my $n = shift;
    my $result = 1;
    foreach my $i (1 .. $n) {
        $result *= $i;
    }
    return $result;
}
