#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More 0.88;

our $r = eval "require Test::NoWarnings; 1";

BEGIN {
    use_ok ('Games::Word::Wordlist::SGB') or
        BAIL_OUT ("Loading of 'Games::Word::Wordlist::SGB' failed");
}

ok defined $Games::Word::Wordlist::SGB::VERSION, "VERSION is set";

Test::NoWarnings::had_no_warnings () if $r;

done_testing;
