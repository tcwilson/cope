use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share 'share';

WriteMakefile(
  NAME              => 'App::Cope',
  DISTNAME          => 'App-Cope',
  ABSTRACT          => 'A colorful wrapper for terminal programs',
  VERSION_FROM      => 'lib/App/Cope.pm',
  LICENSE           => 'perl',
  MIN_PERL_VERSION  => '5.022000',

  EXE_FILES => [ qw(scripts/cope_path.pl) ],

  CONFIGURE_REQUIRES => {
    'ExtUtils::MakeMaker'     => 0,
    'File::ShareDir::Install' => 0,
  },

  PREREQ_PM => {
    'Env::Path'       => 0,
    'File::ShareDir'  => 0,
    'IO::Pty'         => 0,
    'IO::Stty'        => 0,
    'List::MoreUtils' => 0,
    'Regexp::Common'  => 0,
    'Regexp::IPv6'    => 0,

    # Core modules that need to be available
    'IO::Handle'      => 0,
    'Term::ANSIColor' => 0,
  },

  TEST_REQUIRES => {
    'Test::More'      => 0,
  },
);

package MY;
use File::ShareDir::Install qw(postamble);
