#!/usr/bin/perl

$maxatt = 3; # Maximum attempts

sub get_string {
    my ($prompt, $response) = shift;
    for (my $attempts = 0; $attempts < $maxatt; $attempts++) {
        print "Please try again.\n" if $attempts;
        print "$prompt: ";
        $response = readline(*STDIN);
        chomp($response);
        return $response if $response;
    }

    die "Too many failures";
}

$fname = uc get_string "First name";
$lname = uc get_string "Last name";
print "Whole name: $fname $lname\n";
