#!/usr/bin/env perl

use strict;
use warnings;

use Catalyst::ScriptRunner;
Catalyst::ScriptRunner->run('ToxHer', 'Create');

1;

=head1 NAME

toxher_create.pl - Create a new Catalyst Component

=head1 SYNOPSIS

toxher_create.pl [options] model|view|controller name [helper] [options]

 Options:
   --force        don't create a .new file where a file to be created exists
   --mechanize    use Test::WWW::Mechanize::Catalyst for tests if available
   --help         display this help and exits

 Examples:
   toxher_create.pl controller My::Controller
   toxher_create.pl --mechanize controller My::Controller
   toxher_create.pl view My::View
   toxher_create.pl view HTML TT
   toxher_create.pl model My::Model
   toxher_create.pl model SomeDB DBIC::Schema MyApp::Schema create=dynamic\
   dbi:SQLite:/tmp/my.db
   toxher_create.pl model AnotherDB DBIC::Schema MyApp::Schema create=static\
   [Loader opts like db_schema, naming] dbi:Pg:dbname=foo root 4321
   [connect_info opts like quote_char, name_sep]

 See also:
   perldoc Catalyst::Manual
   perldoc Catalyst::Manual::Intro
   perldoc Catalyst::Helper::Model::DBIC::Schema
   perldoc Catalyst::Model::DBIC::Schema
   perldoc Catalyst::View::TT

=head1 DESCRIPTION

Create a new Catalyst Component.

Existing component files are not overwritten.  If any of the component files
to be created already exist the file will be written with a '.new' suffix.
This behavior can be suppressed with the C<-force> option.

=head1 AUTHORS

Catalyst Contributors, see Catalyst.pm

=head1 COPYRIGHT

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
