=begin comment

RadioManager

This OpenAPI 3 Document describes the functionality of the API v2 of RadioManager. Note that no rights can be derived from this Document and the true functionality of the API might differ.

The version of the OpenAPI document: 2.0
Contact: support@pluxbox.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package RadioManagerClient::ItemApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use RadioManagerClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'RadioManagerClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = RadioManagerClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_item
#
# Create an new item.
#
# @param ItemDataInput $item_data_input Data **(Required)** (required)
{
    my $params = {
    'item_data_input' => {
        data_type => 'ItemDataInput',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_item' } = {
        summary => 'Create an new item.',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub create_item {
    my ($self, %args) = @_;

    # verify the required parameter 'item_data_input' is set
    unless (exists $args{'item_data_input'}) {
      croak("Missing the required parameter 'item_data_input' when calling create_item");
    }

    # parse inputs
    my $_resource_path = '/items';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'item_data_input'}) {
        $_body_data = $args{'item_data_input'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2002', $response);
    return $_response_object;
}

#
# current_item_post_structure
#
# Post a current playing item, keep structure
#
# @param ImportItem $import_item Data **(Required)** (required)
{
    my $params = {
    'import_item' => {
        data_type => 'ImportItem',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'current_item_post_structure' } = {
        summary => 'Post a current playing item, keep structure',
        params => $params,
        returns => 'ItemResult',
        };
}
# @return ItemResult
#
sub current_item_post_structure {
    my ($self, %args) = @_;

    # verify the required parameter 'import_item' is set
    unless (exists $args{'import_item'}) {
      croak("Missing the required parameter 'import_item' when calling current_item_post_structure");
    }

    # parse inputs
    my $_resource_path = '/items/current/structure';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'import_item'}) {
        $_body_data = $args{'import_item'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ItemResult', $response);
    return $_response_object;
}

#
# current_item_post_timing
#
# Post current playing Item
#
# @param ImportItem $import_item Data **(Required)** (required)
{
    my $params = {
    'import_item' => {
        data_type => 'ImportItem',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'current_item_post_timing' } = {
        summary => 'Post current playing Item',
        params => $params,
        returns => 'ItemResult',
        };
}
# @return ItemResult
#
sub current_item_post_timing {
    my ($self, %args) = @_;

    # verify the required parameter 'import_item' is set
    unless (exists $args{'import_item'}) {
      croak("Missing the required parameter 'import_item' when calling current_item_post_timing");
    }

    # parse inputs
    my $_resource_path = '/items/current/timing';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'import_item'}) {
        $_body_data = $args{'import_item'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ItemResult', $response);
    return $_response_object;
}

#
# delete_item_by_id
#
# Delete item by ID.
#
# @param int $id ID of Item **(Required)** (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Item **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_item_by_id' } = {
        summary => 'Delete item by ID.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_item_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_item_by_id");
    }

    # parse inputs
    my $_resource_path = '/items/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_current_item
#
# Get current Item
#
# @param boolean $lastplayed Show last played item if there is no current item*(Optional)* (optional)
{
    my $params = {
    'lastplayed' => {
        data_type => 'boolean',
        description => 'Show last played item if there is no current item*(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_current_item' } = {
        summary => 'Get current Item',
        params => $params,
        returns => 'ItemResult',
        };
}
# @return ItemResult
#
sub get_current_item {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/items/current';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'lastplayed'}) {
        $query_params->{'lastplayed'} = $self->{api_client}->to_query_value($args{'lastplayed'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ItemResult', $response);
    return $_response_object;
}

#
# get_item_by_id
#
# Get extended item details by ID.
#
# @param int $id ID of Item **(Required)** (required)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Item **(Required)**',
        required => '1',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_item_by_id' } = {
        summary => 'Get extended item details by ID.',
        params => $params,
        returns => 'ItemResult',
        };
}
# @return ItemResult
#
sub get_item_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_item_by_id");
    }

    # parse inputs
    my $_resource_path = '/items/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'_external_station_id'}) {
        $query_params->{'_external_station_id'} = $self->{api_client}->to_query_value($args{'_external_station_id'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ItemResult', $response);
    return $_response_object;
}

#
# list_items
#
# Get a list of all the items currently in your station.
#
# @param int $block_id Search on Block ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $broadcast_id Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $model_type_id Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $tag_id Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $campaign_id Search on Campaign ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $contact_id Search on Contact ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $program_draft_id Search on Program Draft ID *(Optional)* (optional)
# @param int $user_draft_id Search on User Draft ID *(Optional)* (optional)
# @param int $station_draft_id Search on Station Draft ID *(Optional)* (optional)
# @param int $program_id Search on Program ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param string $external_id Search on External ID *(Optional)* (optional)
# @param int $duration_min Minimum duration (seconds) *(Optional)* (optional)
# @param int $duration_max Maximum duration (seconds) *(Optional)* (optional)
# @param string $status Play Status of item *(Optional)* (optional)
# @param DATE_TIME $start_min Minimum start date *(Optional)* (optional)
# @param DATE_TIME $start_max Maximum start date *(Optional)* (optional)
# @param int $page Current page *(Optional)* (optional, default to 1)
# @param int $limit Results per page *(Optional)* (optional)
# @param string $order_by Field to order the results *(Optional)* (optional)
# @param string $order_direction Direction of ordering *(Optional)* (optional)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'block_id' => {
        data_type => 'int',
        description => 'Search on Block ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'broadcast_id' => {
        data_type => 'int',
        description => 'Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'model_type_id' => {
        data_type => 'int',
        description => 'Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'tag_id' => {
        data_type => 'int',
        description => 'Search on Tag ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'campaign_id' => {
        data_type => 'int',
        description => 'Search on Campaign ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'contact_id' => {
        data_type => 'int',
        description => 'Search on Contact ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'program_draft_id' => {
        data_type => 'int',
        description => 'Search on Program Draft ID *(Optional)*',
        required => '0',
    },
    'user_draft_id' => {
        data_type => 'int',
        description => 'Search on User Draft ID *(Optional)*',
        required => '0',
    },
    'station_draft_id' => {
        data_type => 'int',
        description => 'Search on Station Draft ID *(Optional)*',
        required => '0',
    },
    'program_id' => {
        data_type => 'int',
        description => 'Search on Program ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'external_id' => {
        data_type => 'string',
        description => 'Search on External ID *(Optional)*',
        required => '0',
    },
    'duration_min' => {
        data_type => 'int',
        description => 'Minimum duration (seconds) *(Optional)*',
        required => '0',
    },
    'duration_max' => {
        data_type => 'int',
        description => 'Maximum duration (seconds) *(Optional)*',
        required => '0',
    },
    'status' => {
        data_type => 'string',
        description => 'Play Status of item *(Optional)*',
        required => '0',
    },
    'start_min' => {
        data_type => 'DATE_TIME',
        description => 'Minimum start date *(Optional)*',
        required => '0',
    },
    'start_max' => {
        data_type => 'DATE_TIME',
        description => 'Maximum start date *(Optional)*',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Current page *(Optional)*',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Results per page *(Optional)*',
        required => '0',
    },
    'order_by' => {
        data_type => 'string',
        description => 'Field to order the results *(Optional)*',
        required => '0',
    },
    'order_direction' => {
        data_type => 'string',
        description => 'Direction of ordering *(Optional)*',
        required => '0',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_items' } = {
        summary => 'Get a list of all the items currently in your station.',
        params => $params,
        returns => 'InlineResponse2008',
        };
}
# @return InlineResponse2008
#
sub list_items {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/items';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'block_id'}) {
        $query_params->{'block_id'} = $self->{api_client}->to_query_value($args{'block_id'});
    }

    # query params
    if ( exists $args{'broadcast_id'}) {
        $query_params->{'broadcast_id'} = $self->{api_client}->to_query_value($args{'broadcast_id'});
    }

    # query params
    if ( exists $args{'model_type_id'}) {
        $query_params->{'model_type_id'} = $self->{api_client}->to_query_value($args{'model_type_id'});
    }

    # query params
    if ( exists $args{'tag_id'}) {
        $query_params->{'tag_id'} = $self->{api_client}->to_query_value($args{'tag_id'});
    }

    # query params
    if ( exists $args{'campaign_id'}) {
        $query_params->{'campaign_id'} = $self->{api_client}->to_query_value($args{'campaign_id'});
    }

    # query params
    if ( exists $args{'contact_id'}) {
        $query_params->{'contact_id'} = $self->{api_client}->to_query_value($args{'contact_id'});
    }

    # query params
    if ( exists $args{'program_draft_id'}) {
        $query_params->{'program_draft_id'} = $self->{api_client}->to_query_value($args{'program_draft_id'});
    }

    # query params
    if ( exists $args{'user_draft_id'}) {
        $query_params->{'user_draft_id'} = $self->{api_client}->to_query_value($args{'user_draft_id'});
    }

    # query params
    if ( exists $args{'station_draft_id'}) {
        $query_params->{'station_draft_id'} = $self->{api_client}->to_query_value($args{'station_draft_id'});
    }

    # query params
    if ( exists $args{'program_id'}) {
        $query_params->{'program_id'} = $self->{api_client}->to_query_value($args{'program_id'});
    }

    # query params
    if ( exists $args{'external_id'}) {
        $query_params->{'external_id'} = $self->{api_client}->to_query_value($args{'external_id'});
    }

    # query params
    if ( exists $args{'duration_min'}) {
        $query_params->{'duration-min'} = $self->{api_client}->to_query_value($args{'duration_min'});
    }

    # query params
    if ( exists $args{'duration_max'}) {
        $query_params->{'duration-max'} = $self->{api_client}->to_query_value($args{'duration_max'});
    }

    # query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
    }

    # query params
    if ( exists $args{'start_min'}) {
        $query_params->{'start-min'} = $self->{api_client}->to_query_value($args{'start_min'});
    }

    # query params
    if ( exists $args{'start_max'}) {
        $query_params->{'start-max'} = $self->{api_client}->to_query_value($args{'start_max'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'order_by'}) {
        $query_params->{'order-by'} = $self->{api_client}->to_query_value($args{'order_by'});
    }

    # query params
    if ( exists $args{'order_direction'}) {
        $query_params->{'order-direction'} = $self->{api_client}->to_query_value($args{'order_direction'});
    }

    # query params
    if ( exists $args{'_external_station_id'}) {
        $query_params->{'_external_station_id'} = $self->{api_client}->to_query_value($args{'_external_station_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2008', $response);
    return $_response_object;
}

#
# playlist_post_merge
#
# Post a playlist, do not remove previously imported items
#
# @param PlaylistMergeBody $playlist_merge_body Data *(Required)* (required)
{
    my $params = {
    'playlist_merge_body' => {
        data_type => 'PlaylistMergeBody',
        description => 'Data *(Required)*',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'playlist_post_merge' } = {
        summary => 'Post a playlist, do not remove previously imported items',
        params => $params,
        returns => 'InlineResponse2021',
        };
}
# @return InlineResponse2021
#
sub playlist_post_merge {
    my ($self, %args) = @_;

    # verify the required parameter 'playlist_merge_body' is set
    unless (exists $args{'playlist_merge_body'}) {
      croak("Missing the required parameter 'playlist_merge_body' when calling playlist_post_merge");
    }

    # parse inputs
    my $_resource_path = '/items/playlist/merge';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'playlist_merge_body'}) {
        $_body_data = $args{'playlist_merge_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2021', $response);
    return $_response_object;
}

#
# playlist_post_structure
#
# Post a playlist, keep current structure
#
# @param PlaylistStructureBody $playlist_structure_body Data *(Required)* (required)
{
    my $params = {
    'playlist_structure_body' => {
        data_type => 'PlaylistStructureBody',
        description => 'Data *(Required)*',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'playlist_post_structure' } = {
        summary => 'Post a playlist, keep current structure',
        params => $params,
        returns => 'InlineResponse2021',
        };
}
# @return InlineResponse2021
#
sub playlist_post_structure {
    my ($self, %args) = @_;

    # verify the required parameter 'playlist_structure_body' is set
    unless (exists $args{'playlist_structure_body'}) {
      croak("Missing the required parameter 'playlist_structure_body' when calling playlist_post_structure");
    }

    # parse inputs
    my $_resource_path = '/items/playlist/structure';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'playlist_structure_body'}) {
        $_body_data = $args{'playlist_structure_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2021', $response);
    return $_response_object;
}

#
# playlist_post_timing
#
# Post a playlist
#
# @param PlaylistTimingBody $playlist_timing_body Data *(Required)* (required)
{
    my $params = {
    'playlist_timing_body' => {
        data_type => 'PlaylistTimingBody',
        description => 'Data *(Required)*',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'playlist_post_timing' } = {
        summary => 'Post a playlist',
        params => $params,
        returns => 'InlineResponse2021',
        };
}
# @return InlineResponse2021
#
sub playlist_post_timing {
    my ($self, %args) = @_;

    # verify the required parameter 'playlist_timing_body' is set
    unless (exists $args{'playlist_timing_body'}) {
      croak("Missing the required parameter 'playlist_timing_body' when calling playlist_post_timing");
    }

    # parse inputs
    my $_resource_path = '/items/playlist/timing';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'playlist_timing_body'}) {
        $_body_data = $args{'playlist_timing_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2021', $response);
    return $_response_object;
}

#
# stop_current_item
#
# Stop an Item
#
# @param ItemsStopcurrentBody $items_stopcurrent_body Data *(Optional)* (optional)
{
    my $params = {
    'items_stopcurrent_body' => {
        data_type => 'ItemsStopcurrentBody',
        description => 'Data *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'stop_current_item' } = {
        summary => 'Stop an Item',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub stop_current_item {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/items/stopcurrent';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'items_stopcurrent_body'}) {
        $_body_data = $args{'items_stopcurrent_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse202', $response);
    return $_response_object;
}

#
# update_item_by_id
#
# Update extended item details by ID.
#
# @param int $id ID of Item **(Required)** (required)
# @param ItemDataInput $item_data_input Data *(Optional)* (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Item **(Required)**',
        required => '1',
    },
    'item_data_input' => {
        data_type => 'ItemDataInput',
        description => 'Data *(Optional)*',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_item_by_id' } = {
        summary => 'Update extended item details by ID.',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub update_item_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_item_by_id");
    }

    # verify the required parameter 'item_data_input' is set
    unless (exists $args{'item_data_input'}) {
      croak("Missing the required parameter 'item_data_input' when calling update_item_by_id");
    }

    # parse inputs
    my $_resource_path = '/items/{id}';

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'item_data_input'}) {
        $_body_data = $args{'item_data_input'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API-Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse202', $response);
    return $_response_object;
}

1;