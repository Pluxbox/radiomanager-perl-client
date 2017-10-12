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

use_ok('RadioManagerClient::BroadcastApi');

my $api = RadioManagerClient::BroadcastApi->new();
isa_ok($api, 'RadioManagerClient::BroadcastApi');

#
# create_broadcast test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->create_broadcast(data => $data);
}

#
# delete_broadcast_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_broadcast_by_id(id => $id);
}

#
# get_broadcast_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->get_broadcast_by_id(id => $id, _external_station_id => $_external_station_id);
}

#
# get_current_broadcast test
#
{
    my $result = $api->get_current_broadcast();
}

#
# get_daily_epg test
#
{
    my $date = undef; # replace NULL with a proper value
    my $withunpublished = undef; # replace NULL with a proper value
    my $result = $api->get_daily_epg(date => $date, withunpublished => $withunpublished);
}

#
# get_epg_by_date test
#
{
    my $date = undef; # replace NULL with a proper value
    my $withunpublished = undef; # replace NULL with a proper value
    my $result = $api->get_epg_by_date(date => $date, withunpublished => $withunpublished);
}

#
# get_next_broadcast test
#
{
    my $result = $api->get_next_broadcast();
}

#
# get_weekly_epg test
#
{
    my $date = undef; # replace NULL with a proper value
    my $withunpublished = undef; # replace NULL with a proper value
    my $result = $api->get_weekly_epg(date => $date, withunpublished => $withunpublished);
}

#
# list_broadcasts test
#
{
    my $page = undef; # replace NULL with a proper value
    my $program_id = undef; # replace NULL with a proper value
    my $block_id = undef; # replace NULL with a proper value
    my $model_type_id = undef; # replace NULL with a proper value
    my $tag_id = undef; # replace NULL with a proper value
    my $presenter_id = undef; # replace NULL with a proper value
    my $genre_id = undef; # replace NULL with a proper value
    my $item_id = undef; # replace NULL with a proper value
    my $start_min = undef; # replace NULL with a proper value
    my $start_max = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $order_by = undef; # replace NULL with a proper value
    my $order_direction = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->list_broadcasts(page => $page, program_id => $program_id, block_id => $block_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, item_id => $item_id, start_min => $start_min, start_max => $start_max, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
}

#
# print_broadcast_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $program_id = undef; # replace NULL with a proper value
    my $presenter_id = undef; # replace NULL with a proper value
    my $tag_id = undef; # replace NULL with a proper value
    my $result = $api->print_broadcast_by_id(id => $id, program_id => $program_id, presenter_id => $presenter_id, tag_id => $tag_id);
}

#
# update_broadcast_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $data = undef; # replace NULL with a proper value
    my $result = $api->update_broadcast_by_id(id => $id, data => $data);
}


1;
