#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

chdir 't/git-repo/' or die $!;

system('cp ../*.py .');
ok !$?;

my $output = `ls -1`;

ok $output eq 'test.py
uncommitted.py
', 'Both test Python files are present';

system('git add test.py');
ok !$?;

$output = `git commit 2>&1`;

ok $output eq "test.py:1:1: F401 'datetime' imported but unused
test.py:3:80: E501 line too long (97 > 79 characters)
test.py:5:31: E225 missing whitespace around operator
", 'flake8 ran on committed Python file';

done_testing;
