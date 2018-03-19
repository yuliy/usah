#!/usr/bin/perl

open(INFILE, "</etc/passwd") or die "Failed opening file /etc/passwd";
open(OUTFILE, ">/tmp/passwd") or die "Faield opening file /tmp/passwd";

while (<INFILE>) {
    ($name, $pw, $uid, $gid, $gecos, $path, $sh) = split /:/;
    print OUTFILE "$uid\t$name\n";
}
