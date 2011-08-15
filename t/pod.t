#!/usr/bin/perl -w

use strict;
use warnings;

$| = 1;

use Test::More;

eval {
	require Pod::Checker;
	my $checker = Pod::Checker->new();
	$checker->parse_from_file('randpass', \*STDOUT);
	plan tests => 2;
	is( $checker->num_errors(), 0,          'POD syntax' );
	is( $checker->name(),       'randpass', 'POD name'   );
};

#plan 0 if $@;

#plan skip_all => "Couldn't test POD docs (this is not a problem)"
#	if $@;
