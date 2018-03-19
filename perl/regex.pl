#!/usr/bin/perl

$names = "huey dewey louie";
$regex = '(\w+) \s+(\w+)\s(\w+)';

if ($names =~ m/$regex/) {
    print "1st name $1.\n2nd name $2.\n3rd name $3.\n";
    $names =~ s/$regex/\2 \1/;
    print "New names \"${names}\".\n";
} else {
    print qq{ "$ names" doesn't match "$regex" pattern. \n};
}
