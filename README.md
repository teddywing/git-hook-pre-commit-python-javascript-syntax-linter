git-hook-pre-commit-python-javascript-syntax-linter
===================================================

A git pre-commit hook that lints Python and JavaScript files to be committed. If
syntax errors are present, the commit is aborted.


## Requirements
* [flake8](https://pypi.python.org/pypi/flake8/2.4.1)
* [jshint](https://www.npmjs.com/package/jshint)


## Installation

	cp pre-commit /your/project/path/.git/hooks
	chmod +x /your/project/path/.git/hooks/pre-commit

If you already have a `pre-commit` hook, copy the relevant lines to your
`pre-commit` script.


## Tests
Requires `git` and `prove`. To run the tests use:

	$ make


## License
Licensed under the MIT license. See the included LICENSE file.
