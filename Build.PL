use strict;
use warnings FATAL => 'all';
use Module::Build;

Module::Build->new(
    name                 => 'FormValidator-Lite-Constraint-Mouse',
    module_name          => 'FormValidator::Lite::Constraint::Mouse',
    dist_author          => 'Hideaki Ohno<hide.o.j55@gmail.com>',
    license              => 'perl',
    recursive_test_files => 1,
    dynamic_config       => 0,
    build_requires       => {
        'Test::More'  => '0.98',
        'Test::Fatal' => 0,
    },
    configure_requires => { 'Module::Build' => '0.38' },
    requires           => {
        'perl'                => '5.008003',
        'FormValidator::Lite' => 0,
        'Mouse'               => '0.18',
    },
    recommends => { 'Mouse'     => '0.92' },
    no_index   => { 'directory' => [ 't', 'xt', 'inc', 'eg' ] },
    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? [qw(t/ xt/)] : ['t/'],
    create_readme  => 1,
    add_to_cleanup => ['FormValidator-Lite-Constraint-Mouse-*'],
    meta_merge     => {
        keywords  => [qw/Mouse FormValidator::Lite/],
        resources => {
            repository => 'git://github.com/hideo55/p5-FormValidator-Lite-Constraint-Mouse.git',
            bugtracker => 'https://github.com/hideo55/p5-FormValidator-Lite-Constraint-Mouse/issues',
        },
    },
)->create_build_script;
