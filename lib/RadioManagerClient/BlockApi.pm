=begin comment

RadioManager

RadioManager

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
package RadioManagerClient::BlockApi;

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
# get_block_by_id
#
# Get block by id
# 
# @param int $id ID of Block **(Required)** (required)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Block **(Required)**',
        required => '1',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_block_by_id' } = { 
    	summary => 'Get block by id',
        params => $params,
        returns => 'BlockResult',
        };
}
# @return BlockResult
#
sub get_block_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_block_by_id");
    }

    # parse inputs
    my $_resource_path = '/blocks/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('BlockResult', $response);
    return $_response_object;
}

#
# get_current_block
#
# Get current Block
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_current_block' } = { 
    	summary => 'Get current Block',
        params => $params,
        returns => 'BlockResult',
        };
}
# @return BlockResult
#
sub get_current_block {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/blocks/current';

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
    my $_response_object = $self->{api_client}->deserialize('BlockResult', $response);
    return $_response_object;
}

#
# get_next_block
#
# Get next Block
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_next_block' } = { 
    	summary => 'Get next Block',
        params => $params,
        returns => 'BlockResult',
        };
}
# @return BlockResult
#
sub get_next_block {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/blocks/next';

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
    my $_response_object = $self->{api_client}->deserialize('BlockResult', $response);
    return $_response_object;
}

#
# list_blocks
#
# Get a list of all blocks currently in your station.
# 
# @param int $page Current page *(Optional)* (optional, default to 1)
# @param DateTime $start_min Minimum start date *(Optional)* (optional)
# @param DateTime $start_max Maximum start date *(Optional)* (optional)
# @param int $broadcast_id Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $program_id Search on Program ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $item_id Search on Item ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Current page *(Optional)*',
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
    'broadcast_id' => {
        data_type => 'int',
        description => 'Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'program_id' => {
        data_type => 'int',
        description => 'Search on Program ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'item_id' => {
        data_type => 'int',
        description => 'Search on Item ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_blocks' } = { 
    	summary => 'Get a list of all blocks currently in your station.',
        params => $params,
        returns => 'BlockResults',
        };
}
# @return BlockResults
#
sub list_blocks {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/blocks';

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
    if ( exists $args{'start_min'}) {
        $query_params->{'start-min'} = $self->{api_client}->to_query_value($args{'start_min'});
    }

    # query params
    if ( exists $args{'start_max'}) {
        $query_params->{'start_max'} = $self->{api_client}->to_query_value($args{'start_max'});
    }

    # query params
    if ( exists $args{'broadcast_id'}) {
        $query_params->{'broadcast_id'} = $self->{api_client}->to_query_value($args{'broadcast_id'});
    }

    # query params
    if ( exists $args{'program_id'}) {
        $query_params->{'program_id'} = $self->{api_client}->to_query_value($args{'program_id'});
    }

    # query params
    if ( exists $args{'item_id'}) {
        $query_params->{'item_id'} = $self->{api_client}->to_query_value($args{'item_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BlockResults', $response);
    return $_response_object;
}

1;
