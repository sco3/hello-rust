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
my $str = "00000000.00000000"; # random number placeholder
my $num;

for my $i (0 .. $n - 1) {
    for my $j (0 .. 16) {
        if ($j == 8) {
            substr($str, $j, 1) = '.';
        } else {
            $seed = (($seed + 7) << 4) / 11 & 0xffffff;
            substr($str, $j, 1) = chr(48 + $seed % 10);
        }
    }
    $num = $str + 0; # Convert string to a numeric value
}

print "Random numbers parsed: $n str: $str num: ", sprintf("%.8f", $num), "\n";

my $end = time();
my $time_spent = $end - $begin;
printf("Time: %d ms\n", int($time_spent * 1000));

exit 0;
