#!/usr/bin/perl
use strict;
use warnings;

#Passing subroutine arguments
printArgs("hello", "jack", "jill", "bob");

#Subroutine which prints the number of arguments passed
sub printArgs{
  my $numOfArguments = @_;
  print "The number of arguments passed is $numOfArguments";
}
