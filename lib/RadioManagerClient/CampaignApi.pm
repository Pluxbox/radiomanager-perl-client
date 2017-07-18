=begin comment

Pluxbox Radiomanager Client

Pluxbox RadioManager gives you the power, flexibility and speed you always wanted in a lightweight and easy-to-use web-based radio solution. With Pluxbox RadioManager you can organise your radio workflow and automate your omnichannel communication with your listeners. We offer wide range specialised services for the radio and connections like Hybrid Radio, Visual Radio, your website and social media without losing focus on your broadcast. For more information visit https://pluxbox.com

OpenAPI spec version: 2.0
Contact: support@pluxbox.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
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
use RadioManagerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => RadioManagerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_campaign
#
# Create campaign.
# 
# @param CampaignDataInput $data Data **(Required)** (required)
{
    my $params = {
    'data' => {
        data_type => 'CampaignDataInput',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_campaign' } = { 
    	summary => 'Create campaign.',
        params => $params,
        returns => 'PostSuccess',
        };
}
# @return PostSuccess
#
sub create_campaign {
    my ($self, %args) = @_;

    # verify the required parameter 'data' is set
    unless (exists $args{'data'}) {
      croak("Missing the required parameter 'data' when calling create_campaign");
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
    if ( exists $args{'data'}) {
        $_body_data = $args{'data'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PostSuccess', $response);
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
        returns => 'Success',
        };
}
# @return Success
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
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Success', $response);
    return $_response_object;
}

#
# get_campaign_by_id
#
# Get campaign by id
# 
# @param int $id ID of Campaign **(Required)** (required)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Campaign **(Required)**',
        required => '1',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
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
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

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
    my $auth_settings = [qw(API Key )];

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
# @param int $page Current page *(Optional)* (optional)
# @param int $model_type_id Search on ModelType ID *(Optional)* (optional)
# @param int $item_id Search on Item ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param DateTime $start_min Minimum start date *(Optional)* (optional)
# @param DateTime $start_max Maximum start date *(Optional)* (optional)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Current page *(Optional)*',
        required => '0',
    },
    'model_type_id' => {
        data_type => 'int',
        description => 'Search on ModelType ID *(Optional)*',
        required => '0',
    },
    'item_id' => {
        data_type => 'int',
        description => 'Search on Item ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'start_min' => {
        data_type => 'DateTime',
        description => 'Minimum start date *(Optional)*',
        required => '0',
    },
    'start_max' => {
        data_type => 'DateTime',
        description => 'Maximum start date *(Optional)*',
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
        returns => 'CampaignResults',
        };
}
# @return CampaignResults
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
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'model_type_id'}) {
        $query_params->{'model_type_id'} = $self->{api_client}->to_query_value($args{'model_type_id'});
    }

    # query params
    if ( exists $args{'item_id'}) {
        $query_params->{'item_id'} = $self->{api_client}->to_query_value($args{'item_id'});
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
    if ( exists $args{'_external_station_id'}) {
        $query_params->{'_external_station_id'} = $self->{api_client}->to_query_value($args{'_external_station_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(API Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('CampaignResults', $response);
    return $_response_object;
}

#
# update_campaign_by_id
#
# Update campaign by id
# 
# @param int $id ID of Campaign **(Required)** (required)
# @param CampaignDataInput $data Data *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Campaign **(Required)**',
        required => '1',
    },
    'data' => {
        data_type => 'CampaignDataInput',
        description => 'Data *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_campaign_by_id' } = { 
    	summary => 'Update campaign by id',
        params => $params,
        returns => 'Success',
        };
}
# @return Success
#
sub update_campaign_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_campaign_by_id");
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
    if ( exists $args{'data'}) {
        $_body_data = $args{'data'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(API Key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Success', $response);
    return $_response_object;
}

1;
