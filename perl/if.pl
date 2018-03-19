#!/usr/bin/perl

sub show_usage {
    print shift, "\n" if scalar(@_);
    print "Usage: $0 <source_dir> <dest_dir>\n";
    exit scalar(@_) ? shift : 1;
}

if (@ARGV != 2) {
    show_usage;
} else {
    ($source_dir, $dest_dir) = @ARGV;
    show_usage "Invalid <source_dir> argument" unless -d $source_dir;
    -d $dest_dir or show_usage "Invalid <dest_dir> argument";
}
