#!/usr/bin/perl
# Name: Christopher Tang
# Course: CIS 280 - Perl
# Assignment 3: Program 1
# Date: 5/19/17

# This program capitalizes the first character in each word of an input string

use strict;
use warnings;

print "Enter a string: ";
$_ = <STDIN>;
chomp($_);
s/([\w']+)/\u\L$1/g;
print;
print "\n";
