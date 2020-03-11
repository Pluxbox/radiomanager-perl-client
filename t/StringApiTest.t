=begin comment

RadioManager

RadioManager

The version of the OpenAPI document: 2.0
Contact: support@pluxbox.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('RadioManagerClient::StringApi');

my $api = RadioManagerClient::StringApi->new();
isa_ok($api, 'RadioManagerClient::StringApi');

#
# get_strings_by_name test
#
{
    my $name = undef; # replace NULL with a proper value
    my $full_model = undef; # replace NULL with a proper value
    my $result = $api->get_strings_by_name(name => $name, full_model => $full_model);
}


1;
