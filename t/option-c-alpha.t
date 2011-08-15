#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More tests => 20;

for (1..10) {
    my @words = `perl randpass -c :alpha`;
    is( scalar(@words), 1, 'number of passwords' );
    like( $words[0], qr/^[A-Za-z0-9]+$/, 'alphanumeric' );
};

