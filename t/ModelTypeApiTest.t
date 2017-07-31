=begin comment

RadioManager

RadioManager

OpenAPI spec version: 2.0
Contact: support@pluxbox.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('RadioManagerClient::ModelTypeApi');

my $api = RadioManagerClient::ModelTypeApi->new();
isa_ok($api, 'RadioManagerClient::ModelTypeApi');

#
# get_model_type_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->get_model_type_by_id(id => $id, _external_station_id => $_external_station_id);
}

#
# list_model_types test
#
{
    my $page = undef; # replace NULL with a proper value
    my $model = undef; # replace NULL with a proper value
    my $program_id = undef; # replace NULL with a proper value
    my $broadcast_id = undef; # replace NULL with a proper value
    my $item_id = undef; # replace NULL with a proper value
    my $campaign_id = undef; # replace NULL with a proper value
    my $presenter_id = undef; # replace NULL with a proper value
    my $contact_id = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->list_model_types(page => $page, model => $model, program_id => $program_id, broadcast_id => $broadcast_id, item_id => $item_id, campaign_id => $campaign_id, presenter_id => $presenter_id, contact_id => $contact_id, _external_station_id => $_external_station_id);
}


1;
