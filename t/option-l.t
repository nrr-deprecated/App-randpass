#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More tests => 20;

for (1..10) {
    my @words = `perl randpass -w -l 64`;
    chomp @words;
    is( scalar(@words), 1, 'number of passwords' );
    is( length($words[0]), 64, 'password length' );
};

