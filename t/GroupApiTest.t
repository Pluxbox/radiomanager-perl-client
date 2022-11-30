=begin comment

RadioManager

This OpenAPI 3 Document describes the functionality of the API v2 of RadioManager. Note that no rights can be derived from this Document and the true functionality of the API might differ.

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

use_ok('RadioManagerClient::GroupApi');

my $api = RadioManagerClient::GroupApi->new();
isa_ok($api, 'RadioManagerClient::GroupApi');

#
# get_group_by_id test
#
# uncomment below and update the test
#my $get_group_by_id_id = undef; # replace NULL with a proper value
#my $get_group_by_id__external_station_id = undef; # replace NULL with a proper value
#my $get_group_by_id_result = $api->get_group_by_id(id => $get_group_by_id_id, _external_station_id => $get_group_by_id__external_station_id);

#
# list_groups test
#
# uncomment below and update the test
#my $list_groups_broadcast_id = undef; # replace NULL with a proper value
#my $list_groups_program_id = undef; # replace NULL with a proper value
#my $list_groups_user_id = undef; # replace NULL with a proper value
#my $list_groups_page = undef; # replace NULL with a proper value
#my $list_groups_limit = undef; # replace NULL with a proper value
#my $list_groups_order_by = undef; # replace NULL with a proper value
#my $list_groups_order_direction = undef; # replace NULL with a proper value
#my $list_groups__external_station_id = undef; # replace NULL with a proper value
#my $list_groups_result = $api->list_groups(broadcast_id => $list_groups_broadcast_id, program_id => $list_groups_program_id, user_id => $list_groups_user_id, page => $list_groups_page, limit => $list_groups_limit, order_by => $list_groups_order_by, order_direction => $list_groups_order_direction, _external_station_id => $list_groups__external_station_id);

