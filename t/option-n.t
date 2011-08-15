#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More tests => 20;

for (1..10) {
    my @words = `perl randpass -n 100`;
    chomp @words;
    is( scalar(@words), 100, 'number of passwords' );
    my @phrases = `perl randpass -n 100 -p 1 -s t/k-words.txt`;
    is( scalar(@words), 100, 'number of passwords' );
    chomp @phrases;
}

