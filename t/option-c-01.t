#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More tests => 40;

for (1..10) {
    my @words = `perl randpass -c 01 -l 5000`;
    chomp @words;
    is( scalar(@words), 1, 'number of passwords' );
    like(   $words[0],  qr/^[01]{5000}$/, 'matches expected pattern' );
    unlike( $words[0],  qr/^0{5000}$/,    'not all zeros' );
    unlike( $words[0],  qr/^1{5000}$/,    'not all ones'  );
};

