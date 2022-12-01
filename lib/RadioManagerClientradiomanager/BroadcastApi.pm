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
package RadioManagerClient::BroadcastApi;

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
# create_broadcast
#
# Create broadcast.
#
# @param BroadcastDataInput $broadcast_data_input Data **(Required)** (required)
{
    my $params = {
    'broadcast_data_input' => {
        data_type => 'BroadcastDataInput',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_broadcast' } = {
        summary => 'Create broadcast.',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub create_broadcast {
    my ($self, %args) = @_;

    # verify the required parameter 'broadcast_data_input' is set
    unless (exists $args{'broadcast_data_input'}) {
      croak("Missing the required parameter 'broadcast_data_input' when calling create_broadcast");
    }

    # parse inputs
    my $_resource_path = '/broadcasts';

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
    if ( exists $args{'broadcast_data_input'}) {
        $_body_data = $args{'broadcast_data_input'};
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
# delete_broadcast_by_id
#
# Delete broadcast by id
#
# @param int $id ID of Broadcast **(Required)** (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Broadcast **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_broadcast_by_id' } = {
        summary => 'Delete broadcast by id',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub delete_broadcast_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_broadcast_by_id");
    }

    # parse inputs
    my $_resource_path = '/broadcasts/{id}';

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
# get_broadcast_by_id
#
# Get broadcast by id
#
# @param int $id ID of Broadcast **(Required)** (required)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Broadcast **(Required)**',
        required => '1',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_broadcast_by_id' } = {
        summary => 'Get broadcast by id',
        params => $params,
        returns => 'BroadcastResult',
        };
}
# @return BroadcastResult
#
sub get_broadcast_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_broadcast_by_id");
    }

    # parse inputs
    my $_resource_path = '/broadcasts/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('BroadcastResult', $response);
    return $_response_object;
}

#
# get_current_broadcast
#
# Get current Broadcast
#
# @param boolean $withunpublished Show Unpublished *(Optional)* (optional)
{
    my $params = {
    'withunpublished' => {
        data_type => 'boolean',
        description => 'Show Unpublished *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_current_broadcast' } = {
        summary => 'Get current Broadcast',
        params => $params,
        returns => 'BroadcastResult',
        };
}
# @return BroadcastResult
#
sub get_current_broadcast {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/broadcasts/current';

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
    if ( exists $args{'withunpublished'}) {
        $query_params->{'withunpublished'} = $self->{api_client}->to_query_value($args{'withunpublished'});
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
    my $_response_object = $self->{api_client}->deserialize('BroadcastResult', $response);
    return $_response_object;
}

#
# get_daily_epg
#
# Get daily EPG
#
# @param DATE_TIME $date Date *(Optional)* (optional)
# @param boolean $withunpublished Show Unpublished *(Optional)* (optional)
{
    my $params = {
    'date' => {
        data_type => 'DATE_TIME',
        description => 'Date *(Optional)*',
        required => '0',
    },
    'withunpublished' => {
        data_type => 'boolean',
        description => 'Show Unpublished *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_daily_epg' } = {
        summary => 'Get daily EPG',
        params => $params,
        returns => 'EPGResults',
        };
}
# @return EPGResults
#
sub get_daily_epg {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/broadcasts/epg/daily';

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
    if ( exists $args{'date'}) {
        $query_params->{'date'} = $self->{api_client}->to_query_value($args{'date'});
    }

    # query params
    if ( exists $args{'withunpublished'}) {
        $query_params->{'withunpublished'} = $self->{api_client}->to_query_value($args{'withunpublished'});
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
    my $_response_object = $self->{api_client}->deserialize('EPGResults', $response);
    return $_response_object;
}

#
# get_epgby_date
#
# Get EPG by date
#
# @param DATE_TIME $date Date *(Optional)* (optional)
# @param boolean $withunpublished Show Unpublished *(Optional)* (optional)
{
    my $params = {
    'date' => {
        data_type => 'DATE_TIME',
        description => 'Date *(Optional)*',
        required => '0',
    },
    'withunpublished' => {
        data_type => 'boolean',
        description => 'Show Unpublished *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_epgby_date' } = {
        summary => 'Get EPG by date',
        params => $params,
        returns => 'EPGResults',
        };
}
# @return EPGResults
#
sub get_epgby_date {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/broadcasts/epg';

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
    if ( exists $args{'date'}) {
        $query_params->{'date'} = $self->{api_client}->to_query_value($args{'date'});
    }

    # query params
    if ( exists $args{'withunpublished'}) {
        $query_params->{'withunpublished'} = $self->{api_client}->to_query_value($args{'withunpublished'});
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
    my $_response_object = $self->{api_client}->deserialize('EPGResults', $response);
    return $_response_object;
}

#
# get_next_broadcast
#
# Get next Broadcast
#
# @param boolean $withunpublished Show Unpublished *(Optional)* (optional)
{
    my $params = {
    'withunpublished' => {
        data_type => 'boolean',
        description => 'Show Unpublished *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_next_broadcast' } = {
        summary => 'Get next Broadcast',
        params => $params,
        returns => 'BroadcastResult',
        };
}
# @return BroadcastResult
#
sub get_next_broadcast {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/broadcasts/next';

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
    if ( exists $args{'withunpublished'}) {
        $query_params->{'withunpublished'} = $self->{api_client}->to_query_value($args{'withunpublished'});
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
    my $_response_object = $self->{api_client}->deserialize('BroadcastResult', $response);
    return $_response_object;
}

#
# get_weekly_epg
#
# Get weekly EPG
#
# @param DATE $date Date *(Optional)* (optional)
# @param boolean $withunpublished Show Unpublished *(Optional)* (optional)
{
    my $params = {
    'date' => {
        data_type => 'DATE',
        description => 'Date *(Optional)*',
        required => '0',
    },
    'withunpublished' => {
        data_type => 'boolean',
        description => 'Show Unpublished *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_weekly_epg' } = {
        summary => 'Get weekly EPG',
        params => $params,
        returns => 'EPGResults',
        };
}
# @return EPGResults
#
sub get_weekly_epg {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/broadcasts/epg/weekly';

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
    if ( exists $args{'date'}) {
        $query_params->{'date'} = $self->{api_client}->to_query_value($args{'date'});
    }

    # query params
    if ( exists $args{'withunpublished'}) {
        $query_params->{'withunpublished'} = $self->{api_client}->to_query_value($args{'withunpublished'});
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
    my $_response_object = $self->{api_client}->deserialize('EPGResults', $response);
    return $_response_object;
}

#
# list_broadcasts
#
# Get all broadcasts.
#
# @param int $program_id Search on Program ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $block_id Search on Block ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $model_type_id Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $tag_id Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $presenter_id Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $genre_id Search on Genre ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $group_id Search on Group ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $item_id Search on Item ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $planned_in_epg Checks if item is in EPG *(Optional)* (optional)
# @param DATE_TIME $start_min Minimum start date *(Optional)* (optional)
# @param DATE_TIME $start_max Maximum start date *(Optional)* (optional)
# @param int $page Current page *(Optional)* (optional, default to 1)
# @param int $limit Results per page *(Optional)* (optional)
# @param string $order_by Field to order the results *(Optional)* (optional)
# @param string $order_direction Direction of ordering *(Optional)* (optional)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'program_id' => {
        data_type => 'int',
        description => 'Search on Program ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'block_id' => {
        data_type => 'int',
        description => 'Search on Block ID *(Optional)* &#x60;(Relation)&#x60;',
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
    'presenter_id' => {
        data_type => 'int',
        description => 'Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'genre_id' => {
        data_type => 'int',
        description => 'Search on Genre ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'group_id' => {
        data_type => 'int',
        description => 'Search on Group ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'item_id' => {
        data_type => 'int',
        description => 'Search on Item ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'planned_in_epg' => {
        data_type => 'int',
        description => 'Checks if item is in EPG *(Optional)*',
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
    __PACKAGE__->method_documentation->{ 'list_broadcasts' } = {
        summary => 'Get all broadcasts.',
        params => $params,
        returns => 'InlineResponse2001',
        };
}
# @return InlineResponse2001
#
sub list_broadcasts {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/broadcasts';

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
    if ( exists $args{'program_id'}) {
        $query_params->{'program_id'} = $self->{api_client}->to_query_value($args{'program_id'});
    }

    # query params
    if ( exists $args{'block_id'}) {
        $query_params->{'block_id'} = $self->{api_client}->to_query_value($args{'block_id'});
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
    if ( exists $args{'presenter_id'}) {
        $query_params->{'presenter_id'} = $self->{api_client}->to_query_value($args{'presenter_id'});
    }

    # query params
    if ( exists $args{'genre_id'}) {
        $query_params->{'genre_id'} = $self->{api_client}->to_query_value($args{'genre_id'});
    }

    # query params
    if ( exists $args{'group_id'}) {
        $query_params->{'group_id'} = $self->{api_client}->to_query_value($args{'group_id'});
    }

    # query params
    if ( exists $args{'item_id'}) {
        $query_params->{'item_id'} = $self->{api_client}->to_query_value($args{'item_id'});
    }

    # query params
    if ( exists $args{'planned_in_epg'}) {
        $query_params->{'planned_in_epg'} = $self->{api_client}->to_query_value($args{'planned_in_epg'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2001', $response);
    return $_response_object;
}

#
# print_broadcast_by_id
#
# Print broadcast by id with template
#
# @param int $id ID of Broadcast **(Required)** (required)
# @param int $template_id The print template to be used *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Broadcast **(Required)**',
        required => '1',
    },
    'template_id' => {
        data_type => 'int',
        description => 'The print template to be used *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'print_broadcast_by_id' } = {
        summary => 'Print broadcast by id with template',
        params => $params,
        returns => 'InlineResponse2003',
        };
}
# @return InlineResponse2003
#
sub print_broadcast_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling print_broadcast_by_id");
    }

    # parse inputs
    my $_resource_path = '/broadcasts/print/{id}';

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
    if ( exists $args{'template_id'}) {
        $query_params->{'template_id'} = $self->{api_client}->to_query_value($args{'template_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2003', $response);
    return $_response_object;
}

#
# update_broadcast_by_id
#
# Update broadcast by id
#
# @param int $id ID of Broadcast **(Required)** (required)
# @param BroadcastDataInput $broadcast_data_input Data *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Broadcast **(Required)**',
        required => '1',
    },
    'broadcast_data_input' => {
        data_type => 'BroadcastDataInput',
        description => 'Data *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_broadcast_by_id' } = {
        summary => 'Update broadcast by id',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub update_broadcast_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_broadcast_by_id");
    }

    # parse inputs
    my $_resource_path = '/broadcasts/{id}';

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
    if ( exists $args{'broadcast_data_input'}) {
        $_body_data = $args{'broadcast_data_input'};
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