#!/usr/bin/perl
use strict;
use warnings;

# Open file to read
open(FILEREAD, "<input.txt");

# Open new file to write
open(FILEWRITE, ">output.txt");

#Writing firstline, then every 3rd line to output.txt file
while(<FILEREAD>){
  print FILEWRITE ((1 == $. % 3) ? $_ : "");
}

close(FILEREAD);
close(FILEWRITE);
