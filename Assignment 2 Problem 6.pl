#!/usr/bin/perl
use strict;
use warnings;

#localtime in both scalar and list context below
my $time = localtime;
my @timeList = localtime;
print "The current time is $time\n";
print "The localtime in list context is: ";
my $size = @timeList;
for(my $i = 0; $i < $size; $i++) {
   print $timeList[$i] . " ";
}
