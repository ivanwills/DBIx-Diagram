use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'DBIx::Diagram',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/DBIx/Diagram.pm',
    requires          => {
        'perl'             => 5.008,
    },
    configure_requires => {
        'Module::Build' => 0.38,
    },
    build_requires => {
        'Test::More'       => '0.88',
        'Test::NoWarnings' => 0,
    },
    add_to_cleanup     => [ 'DBIx-Diagram-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/DBIx-Diagram.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=DBIx::Diagram',
        },
    },
);

$builder->create_build_script();
