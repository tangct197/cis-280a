#!/usr/bin/perl
# Name: Christopher Tang
# Course: CIS 280 - Perl
# CGI Programming Assigment
# Date: 5/19/17

use warnings;
use strict;
use CGI::Carp qw(warningsToBrowser fatalsToBrowser);
use CGI qw( :standard );

print( header() );
print( start_html( "File Editor" ) );

my $filename = param( "File Name");
my $output = param( "File Edit" );

if (param) {
    if (-e $filename) {
            my @lines;
            open(my $fh1, '<:encoding(UTF-8)', $filename)
                or die "Could not open file '$filename' $!";

            while (my $line = <$fh1>) {
                push @lines, $line;
            }

            print "Edit your file: ";
            fileEditForm(\@lines);

            open(my $fh2, '>', $filename) or die "Could not open file '$filename' $!";
            print $fh2 $output;


    } else {
        print "No file with that name exists. Please enter the name of an existing file. You entered: $filename.";
        fileNameForm();
    }

} else {
    fileNameForm();
}



sub fileNameForm {
	print( start_form(),"File Name: ", textfield( -name => "File Name" ),
			br(), submit( "Edit" ),
			end_form() );
}

sub fileEditForm {
    my @lines = @{$_[0]};
    print( start_form(), textarea( -name => "File Edit", -default => join('', @lines), -rows=>25, -cols=>50),
                        br(),
                        submit( "Save changes" ),
			end_form() );
}

print( end_html() );
