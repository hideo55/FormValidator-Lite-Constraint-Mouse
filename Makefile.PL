use inc::Module::Install;
name 'FormValidator-Lite-Constraint-Mouse';
all_from 'lib/FormValidator/Lite/Constraint/Mouse.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
