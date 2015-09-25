#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

system('mkdir -p t/git-repo');
ok !$?;

chdir 't/git-repo' or die $!;

system('git init');
ok !$?;

system('cp ../../pre-commit .git/hooks');
ok !$?;

system('chmod +x .git/hooks/pre-commit');
ok !$?;

done_testing;
