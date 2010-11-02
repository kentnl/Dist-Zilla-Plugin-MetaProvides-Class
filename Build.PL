
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Dist::Zilla::App::Tester' => '0',
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'MooseX::Declare' => '0',
    'Test::More' => '0.88'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Scans Dist::Zilla\'s .pm files and tries to identify classes using Class::Discover.',
  'dist_author' => [
    'Kent Fredric <kentnl@cpan.org>'
  ],
  'dist_name' => 'Dist-Zilla-Plugin-MetaProvides-Class',
  'dist_version' => '1.11044406',
  'license' => 'perl',
  'module_name' => 'Dist::Zilla::Plugin::MetaProvides::Class',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Class::Discover' => '0',
    'Dist::Zilla::MetaProvides::ProvideRecord' => '0',
    'Dist::Zilla::Plugin::MetaProvides' => '1.11044405',
    'Dist::Zilla::Role::MetaProvider::Provider' => '0',
    'Moose' => '0',
    'Moose::Autobox' => '0',
    'namespace::autoclean' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
