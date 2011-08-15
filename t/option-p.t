#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More tests => 20;

for (1..10) {
    my @phrases = `perl randpass -p 2 -s t/k-words.txt`;
    is( scalar(@phrases), 1, 'number of passphrases' );
    like( $phrases[0], qr/^k[a-z]+ k[a-z]+$/, 'passphrase length' );
}
