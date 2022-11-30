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
package RadioManagerClient::CampaignApi;

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
# create_campaign
#
# Create campaign.
#
# @param CampaignDataInput $campaign_data_input Data **(Required)** (required)
{
    my $params = {
    'campaign_data_input' => {
        data_type => 'CampaignDataInput',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_campaign' } = {
        summary => 'Create campaign.',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub create_campaign {
    my ($self, %args) = @_;

    # verify the required parameter 'campaign_data_input' is set
    unless (exists $args{'campaign_data_input'}) {
      croak("Missing the required parameter 'campaign_data_input' when calling create_campaign");
    }

    # parse inputs
    my $_resource_path = '/campaigns';

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
    if ( exists $args{'campaign_data_input'}) {
        $_body_data = $args{'campaign_data_input'};
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
# delete_campaign_by_id
#
# Delete campaign by id
#
# @param int $id ID of Campaign **(Required)** (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Campaign **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_campaign_by_id' } = {
        summary => 'Delete campaign by id',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub delete_campaign_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_campaign_by_id");
    }

    # parse inputs
    my $_resource_path = '/campaigns/{id}';

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
# get_campaign_by_id
#
# Get campaign by id
#
# @param int $id ID of Campaign **(Required)** (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Campaign **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_campaign_by_id' } = {
        summary => 'Get campaign by id',
        params => $params,
        returns => 'CampaignResult',
        };
}
# @return CampaignResult
#
sub get_campaign_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_campaign_by_id");
    }

    # parse inputs
    my $_resource_path = '/campaigns/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('CampaignResult', $response);
    return $_response_object;
}

#
# list_campaigns
#
# Get all campaigns.
#
# @param int $item_id Search on Item ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $model_type_id Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param DATE_TIME $start_min Minimum start date *(Optional)* (optional)
# @param DATE_TIME $start_max Maximum start date *(Optional)* (optional)
# @param int $page Current page *(Optional)* (optional, default to 1)
# @param int $limit Results per page *(Optional)* (optional)
# @param string $order_by Field to order the results *(Optional)* (optional)
# @param string $order_direction Direction of ordering *(Optional)* (optional)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'item_id' => {
        data_type => 'int',
        description => 'Search on Item ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'model_type_id' => {
        data_type => 'int',
        description => 'Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60;',
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
    __PACKAGE__->method_documentation->{ 'list_campaigns' } = {
        summary => 'Get all campaigns.',
        params => $params,
        returns => 'InlineResponse2004',
        };
}
# @return InlineResponse2004
#
sub list_campaigns {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/campaigns';

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
    if ( exists $args{'item_id'}) {
        $query_params->{'item_id'} = $self->{api_client}->to_query_value($args{'item_id'});
    }

    # query params
    if ( exists $args{'model_type_id'}) {
        $query_params->{'model_type_id'} = $self->{api_client}->to_query_value($args{'model_type_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2004', $response);
    return $_response_object;
}

#
# update_campaign_by_id
#
# Update campaign by id
#
# @param int $id ID of Campaign **(Required)** (required)
# @param CampaignDataInput $campaign_data_input Data **(Optional)** (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Campaign **(Required)**',
        required => '1',
    },
    'campaign_data_input' => {
        data_type => 'CampaignDataInput',
        description => 'Data **(Optional)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_campaign_by_id' } = {
        summary => 'Update campaign by id',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub update_campaign_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_campaign_by_id");
    }

    # verify the required parameter 'campaign_data_input' is set
    unless (exists $args{'campaign_data_input'}) {
      croak("Missing the required parameter 'campaign_data_input' when calling update_campaign_by_id");
    }

    # parse inputs
    my $_resource_path = '/campaigns/{id}';

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
    if ( exists $args{'campaign_data_input'}) {
        $_body_data = $args{'campaign_data_input'};
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
