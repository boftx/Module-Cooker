use strict;
use warnings FATAL => 'all';

use ExtUtils::MakeMaker 6.59;

WriteMakefile(
    NAME               => 'Module::Cooker',
    AUTHOR             => 'Jim Bacon <jim@nortx.com>',
    VERSION_FROM       => 'lib/Module/Cooker.pm',
    ABSTRACT_FROM      => 'lib/Module/Cooker.pm',
    LICENSE            => 'perl',
    PL_FILES           => {},
    EXE_FILES          => ['bin/modcooker'],
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 6.59,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    # yes, almost all of these are CORE, but that list DOES change!
    PREREQ_PM => {
        'AppConfig'          => '1.66',
        'Carp'               => 0,
        'Cwd'                => 0,
        'Data::Dumper'       => 0,
        'ExtUtils::Manifest' => 0,
        'File::Copy'         => 0,
        'File::HomeDir'      => 0,
        'File::Path'         => '2.07',
        'File::Spec'         => 0,
        'File::Temp'         => 0,
        'File::Which'        => 0,
        'Getopt::Long'       => 0,
        'Pod::Usage'         => 0,
        'POSIX'              => 0,
        'Storable'           => 0,
        'Template'           => 0,
        'Try::Tiny'          => 0,
        'version'            => '0.77',
    },
    dist       => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    META_MERGE => {
        no_index => { directory => [qw( xt lib/Module/Cooker/profiles )] },
    },
);
