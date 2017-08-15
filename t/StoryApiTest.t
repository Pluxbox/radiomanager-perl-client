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

use_ok('RadioManagerClient::StoryApi');

my $api = RadioManagerClient::StoryApi->new();
isa_ok($api, 'RadioManagerClient::StoryApi');

#
# create_story test
#
{
    my $data = undef; # replace NULL with a proper value
    my $result = $api->create_story(data => $data);
}

#
# delete_story_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_story_by_id(id => $id);
}

#
# get_story_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->get_story_by_id(id => $id, _external_station_id => $_external_station_id);
}

#
# list_stories test
#
{
    my $page = undef; # replace NULL with a proper value
    my $model_type_id = undef; # replace NULL with a proper value
    my $tag_id = undef; # replace NULL with a proper value
    my $item_id = undef; # replace NULL with a proper value
    my $_external_station_id = undef; # replace NULL with a proper value
    my $result = $api->list_stories(page => $page, model_type_id => $model_type_id, tag_id => $tag_id, item_id => $item_id, _external_station_id => $_external_station_id);
}

#
# update_story_by_id test
#
{
    my $id = undef; # replace NULL with a proper value
    my $data = undef; # replace NULL with a proper value
    my $result = $api->update_story_by_id(id => $id, data => $data);
}


1;