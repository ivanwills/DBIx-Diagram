#!/usr/bin/perl

use strict;
use warnings;
use Test::More tests => 1 + 1;
use Test::NoWarnings;

BEGIN {
	use_ok( 'DBIx::Diagram' );
}

diag( "Testing DBIx::Diagram $DBIx::Diagram::VERSION, Perl $], $^X" );
