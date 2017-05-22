#!/usr/bin/perl
use strict;
use warnings;

my @set = (1, 2, 3, 4, 5);
maxIteratively(@set);

sub maxIteratively{
  my @listOfNums = @_;
  my $sizeOfList = @listOfNums;
  my $sum = 0;
  for(my $i = 0; $i < $sizeOfList; $i++) {
     $sum += $listOfNums[$i];
  }
  print $sum;
}

sub maxRecusively{
  
}
