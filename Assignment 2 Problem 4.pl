#!/usr/bin/perl
use strict;
use warnings;
#Declaring constant PI
use constant PI => 3.14159;

#Calling in scalar and list context for testing using 3 as argument
my $calculation = calculation(3);
my @calculation = calculation(3);

print "Subroutine called in scalar context : $calculation\n";
print "Subroutine called in list context : @calculation\n";

sub calculation{
  #using shift to only accept first argument
  my $radius = shift;
  #list context do this
  if(wantarray) {
    my @array = ("Area = " . PI * ($radius * $radius), " Diameter = " . 2 * $radius, " Circumference = " . 2 * PI * $radius);
    return @array;
  #not list context(scalar context) do this
  }else{
    my $area = PI * ($radius * $radius);
    return $area;
  }
}
