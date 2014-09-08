package GeoIP2::Model::Domain;

use strict;
use warnings;

use GeoIP2::Types qw( IPAddress Str );

use Moo;

with 'GeoIP2::Role::Model::Flat', 'GeoIP2::Role::HasIPAddress';

has domain => (
    is        => 'ro',
    isa       => Str,
    predicate => 'has_domain',
);

1;

# ABSTRACT: Model class for the GeoIP2 Domain database

__END__

=head1 SYNOPSIS

  use 5.008;

  use GeoIP2::Model::Domain;

  my $record = GeoIP2::Model::Domain->new(
      raw  => { domain => 'maxmind.com', ip_address => '24.24.24.24'}
  );

  say $record->domain();

=head1 DESCRIPTION

This class provides a model for GeoIP2 Domain.

=head1 METHODS

This class provides the following methods:

=head2 $record->domain()

Returns the domain as a string.

=head2 $record->ip_address()

Returns the IP address used in the lookup.