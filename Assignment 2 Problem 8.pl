#!/usr/bin/perl
use strict;
use warnings;

# Open file to read
open(FILEREAD, "<input1.txt");

# Open new file to write
open(FILEWRITE, ">output1.txt");

#Reads the file in reverse order stored into an array then outputted to output1.txt
my @lines = reverse <FILEREAD>;
foreach my $line (@lines) {
    print FILEWRITE $line;
}

close(FILEREAD);
close(FILEWRITE);
