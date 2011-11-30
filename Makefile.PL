use inc::Module::Install;
name 'FormValidator-Lite-Constraint-Mouse';
all_from 'lib/FormValidator/Lite/Constraint/Mouse.pm';

requires 'FormValidator::LIte';
requires 'Mouse';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More' => '0.94';
test_requires 'Test::Fatal';
auto_set_repository;
auto_include;
WriteAll;
