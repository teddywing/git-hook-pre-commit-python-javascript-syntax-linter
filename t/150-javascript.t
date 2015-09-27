#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;

chdir 't/git-repo/' or die $!;

system('cp -R ../../node_modules .');
ok !$?;

system('cp ../*.js .');
ok !$?;

my $output = `ls -1 | grep .*\.js`;

ok $output eq 'test.js
uncommitted.js
', 'Both test JavaScript files are present';

system('git add test.js');
ok !$?;

$output = `git commit 2>&1`;

ok $output eq "test.js: line 1, col 21, Missing semicolon.
test.js: line 3, col 1, Bad line breaking before '&&'.
test.js: line 3, col 9, Expected an assignment or function call and instead saw an expression.

3 errors
", 'jshint ran on committed JavaScript file';

$output = `git reset`;
ok !$?;

done_testing;
