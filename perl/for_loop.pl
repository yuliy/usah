#!/usr/bin/perl

@animals = qw(lions tigers bears);

foreach $animal (@animals) {
    print "$animal \n" ;
}

for ($counter=1; $counter <= 10; $counter++) {
    printf "$counter ";
}
