#!/usr/bin/perl
use strict;
use warnings;
use Time::HiRes qw(time);

my $begin = time();

my $n = 10000000;
if (@ARGV > 0) {
    $n = $ARGV[0];
}

my $seed = 1;
my $str = "00000000.00000000"; # Random number placeholder
my $num;

for my $i (0 .. $n - 1) {
    # Convert the string into an array of characters
    my @chars = split(//, $str);
    for my $j (0 .. $#chars) {
        if ($j == 8) {
            $chars[$j] = '.'; # Assign the dot character at position 8
        } else {
            $seed = (($seed + 7) << 4) / 11 & 0xffffff;
            $chars[$j] = chr(48 + $seed % 10); # Generate and assign a random digit
        }
    }
    # Join the characters back into a string
    $str = join('', @chars);
    $num = $str + 0; # Convert string to numeric value
}

print "Random numbers parsed: $n str: $str num: ", sprintf("%.8f", $num), "\n";

my $end = time();
my $time_spent = $end - $begin;
printf("Time: %d ms\n", int($time_spent * 1000));

exit 0;
