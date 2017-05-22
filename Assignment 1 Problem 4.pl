#!/usr/bin/perl

@names = qw(Nick Susan Chet Dolly Bill);

print "The array of names is: @names\n";

#Splicing the array to remove Susan and Chet and replace them with Ellie,
#Beatrice, and Charles
splice(@names, 1, 2, Ellie, Beatrice, Charles);
print "The array of names replacing Susan and Chet with Ellie," .
      " Beatrice, and Charles is: @names\n";

#Get size of array to remove Bill(Last Name) from the array
$arraySizeofNames = @names;
splice(@names, $arraySizeofNames - 1, 1);
print "The array of names without Bill: @names\n";

#Adding Lewis and Izzy to the end of the array of names
push @names, Lewis, Izzy;
print "The array of names with Lewis and Izzy: @names\n";

#Removing Nick from the beginning of the array of names
shift(@names);
print "The array of names with Nick removed from the beginning: @names\n";

#Reversing the array
@reversedNames = reverse @names;
print "The array of names reversed: @reversedNames\n";

#Adding Archie to the beginning of the array
unshift(@names, Archie);
print "The array of names with Archie at the beginning of the array: @names\n";

#Sorting the array
@sortedNames = sort @names;
print "The names sorted is: @sortedNames\n";

#Splicing the array to remove Chet and Dolly and replace them with Christian
#and Daniel
@names = qw(Nick Susan Chet Dolly Bill);
splice(@names, 2, 2, Christian, Daniel);
print "The array of names after Chet and Dolly are removed and replaced with ".
      "Christian and Daniel is: @names\n";
