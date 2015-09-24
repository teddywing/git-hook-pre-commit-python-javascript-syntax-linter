#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

system('mkdir -p t/git-repo');
ok !$?;

chdir 't/git-repo' or die $!;

done_testing;
