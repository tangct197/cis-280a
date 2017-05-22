#!/usr/bin/perl
use strict;
use warnings;

#Array of people and their ages
my @people = ('john', 24, 'greg', 20, 'michael', 19, 'anna', 21);

#Setting hash to array of people
my %hash_of_people = @people;

#Printing keys and their respective values
while(my($key, $value) = each %hash_of_people){
    print "keys: $key => values: $value\n";
}
