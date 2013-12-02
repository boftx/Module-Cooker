#!perl

# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 00-load.t'
# Test::More is use()ed here so read its man page ( perldoc Test::More )
# for help writing your own test scripts.

use strict;
use warnings FATAL => 'all';

use Test::More;
plan tests => 1;

BEGIN {
    use_ok( '[% package.name %]' )
      || BAIL_OUT "Can not use [% package.name %]\n";
}

diag( "Testing [% package.name %] $[% package.name %]::VERSION, Perl $], $^X" );

done_testing();

exit;

__END__

