#!perl

#use 5.008_008;

use strict;
use warnings FATAL => 'all';

use Test::More;
use Try::Tiny;

require Module::Cooker;

my $mc = new_ok('Module::Cooker');

done_testing();

exit;
