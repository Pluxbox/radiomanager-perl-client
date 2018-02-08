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

use_ok('RadioManagerClient::ItemApi');

my $api = RadioManagerClient::ItemApi->new();
isa_ok($api, 'RadioManagerClient::ItemApi');

#
# create_item test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->create_item(data => $data);
}

#
# current_item_post_structure test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->current_item_post_structure(data => $data);
}

#
# current_item_post_timing test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->current_item_post_timing(data => $data);
}

#
# delete_item_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_item_by_id(id => $id);
}

#
# get_item_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->get_item_by_id(id => $id, _external_station_id => $_external_station_id);
}

#
# list_items test
#
{
    my $page = undef; # replace NULL with a proper value
    my $block_id = undef; # replace NULL with a proper value
    my $broadcast_id = undef; # replace NULL with a proper value
    my $model_type_id = undef; # replace NULL with a proper value
    my $tag_id = undef; # replace NULL with a proper value
    my $campaign_id = undef; # replace NULL with a proper value
    my $contact_id = undef; # replace NULL with a proper value
    my $program_draft_id = undef; # replace NULL with a proper value
    my $user_draft_id = undef; # replace NULL with a proper value
    my $station_draft_id = undef; # replace NULL with a proper value
    my $program_id = undef; # replace NULL with a proper value
    my $start_min = undef; # replace NULL with a proper value
    my $start_max = undef; # replace NULL with a proper value
    my $duration_min = undef; # replace NULL with a proper value
    my $duration_max = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $order_by = undef; # replace NULL with a proper value
    my $order_direction = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->list_items(page => $page, block_id => $block_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, campaign_id => $campaign_id, contact_id => $contact_id, program_draft_id => $program_draft_id, user_draft_id => $user_draft_id, station_draft_id => $station_draft_id, program_id => $program_id, start_min => $start_min, start_max => $start_max, duration_min => $duration_min, duration_max => $duration_max, status => $status, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
}

#
# playlist_post_structure test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->playlist_post_structure(data => $data);
}

#
# playlist_post_timing test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->playlist_post_timing(data => $data);
}

#
# update_item_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $data = undef; # replace NULL with a proper value
    my $result = $api->update_item_by_id(id => $id, data => $data);
}


1;
