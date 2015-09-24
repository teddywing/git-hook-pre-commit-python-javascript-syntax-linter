#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

chdir 't' or die $!;

if (!-d 'git-repo') {
	plan skip_all => 'Testing stage already cleaned.';
}

system('rm -rf git-repo');
ok !$?;

done_testing;
