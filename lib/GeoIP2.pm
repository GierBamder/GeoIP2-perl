package GeoIP2;

use 5.008;

1;

# ABSTRACT: Perl API for MaxMind's GeoIP2 web services

__END__

=head1 DESCRIPTION

This distribution provides an API for the GeoIP2 web services (as documented
at http://dev.maxmind.com/geoip/geoip2/web-services).

In the future, this distribution will also provide the same API for the GeoIP2
downloadable databases. These databases have not yet been released as a
downloadable product.

See L<GeoIP2::Webservice::Client> for details on the web service client API.

=head1 INTEGRATION WITH GEONAMES

GeoNames (http://www.geonames.org/) offers web services and downloadable
databases with data on geographical features around the world, including
populated places. They offer both free and paid premium data. Each feature is
unique identified by a C<geoname_id>, which is an integer.

Many of the records returned by the GeoIP web services and databases include a
C<geoname_id> field. This is the ID of a geographical feature (city, region,
country, etc.) in the GeoNames database.

Some of the data that MaxMind provides is also sourced from GeoNames. We
source things like place names, ISO codes, and other similar data from the
GeoNames premium data set.

=head1 REPORTING DATA PROBLEMS

If the problem you find is that an IP address is incorrectly mapped, please
submit your correction to MaxMind at http://www.maxmind.com/en/correction.

If you find some other sort of mistake, like an incorrect spelling, please
check the GeoNames site (http://www.geonames.org/) first. Once you've searched
for a place and found it on the GeoNames map view, there are a number of links
you can use to correct data ("move", "edit", "alternate names", etc.). Once
the correction is part of the GeoNames data set, it will be automatically
incorporated into future MaxMind releases.

If you are a paying MaxMind customer and you're not sure where to submit a
correction, please contact MaxMind support at
http://www.maxmind.com/en/support for help.

=head1 PERL VERSION SUPPORT

This code requires Perl 5.10 or greater. Older versions of Perl are not
supported.

=head1 SUPPORT

Please report all issues with this code using the GitHub issue tracker at
https://github.com/maxmind/GeoIP2-perl/issues

If you are having an issue with a MaxMind service that is not specific to the
client API please see http://www.maxmind.com/en/support for details.
