use 5.008_008;

use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker 6.59;

WriteMakefile(
    NAME               => 'Module::Cooker',
    AUTHOR             => q{Jim Bacon <jim@nortx.com>},
    VERSION_FROM       => 'lib/Module/Cooker.pm',
    ABSTRACT_FROM      => 'lib/Module/Cooker.pm',
    LICENSE            => 'Perl',
    PL_FILES           => {},
    MIN_PERL_VERSION   => '5.008.008',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.59,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Data::Dumper'          => 0,
        'Carp'                  => 0,
        'Cwd'                   => 0,
        'Try::Tiny'             => 0,
        'version'               => '0.77',
        'ExtUtils::Manifest'    => 0,
        'File::Copy'            => 0,
        'File::Path'            => 0,
        'File::Spec::Functions' => 0,
        'File::Which'           => 0,
        'POSIX'                 => 0,
        'Template'              => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Module-Cooker-*' },
);
