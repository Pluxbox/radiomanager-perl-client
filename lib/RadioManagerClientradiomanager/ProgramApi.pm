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
package RadioManagerClient::ProgramApi;

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
# create_program
#
# Create program.
#
# @param ProgramDataInput $program_data_input Data **(Required)** (required)
{
    my $params = {
    'program_data_input' => {
        data_type => 'ProgramDataInput',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_program' } = {
        summary => 'Create program.',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub create_program {
    my ($self, %args) = @_;

    # verify the required parameter 'program_data_input' is set
    unless (exists $args{'program_data_input'}) {
      croak("Missing the required parameter 'program_data_input' when calling create_program");
    }

    # parse inputs
    my $_resource_path = '/programs';

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
    if ( exists $args{'program_data_input'}) {
        $_body_data = $args{'program_data_input'};
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
# delete_program_by_id
#
# Delete program by id
#
# @param int $id ID of program **(Required)** (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of program **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_program_by_id' } = {
        summary => 'Delete program by id',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub delete_program_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_program_by_id");
    }

    # parse inputs
    my $_resource_path = '/programs/{id}';

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
# get_program_by_id
#
# Get program by id
#
# @param int $id ID of Program **(Required)** (required)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Program **(Required)**',
        required => '1',
    },
    '_external_station_id' => {
        data_type => 'int',
        description => 'Query on a different (content providing) station *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_program_by_id' } = {
        summary => 'Get program by id',
        params => $params,
        returns => 'ProgramResult',
        };
}
# @return ProgramResult
#
sub get_program_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_program_by_id");
    }

    # parse inputs
    my $_resource_path = '/programs/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('ProgramResult', $response);
    return $_response_object;
}

#
# list_programs
#
# Get all programs.
#
# @param int $broadcast_id Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $model_type_id Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $tag_id Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $presenter_id Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $genre_id Search on Genre ID *(Optional)* (optional)
# @param int $group_id Search on Group ID *(Optional)* (optional)
# @param int $block_id Search on Block ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $item_id Search on Item ID *(Optional)* &#x60;(Relation)&#x60; (optional)
# @param int $disabled Search on Disabled status *(Optional)* (optional)
# @param int $page Current page *(Optional)* (optional, default to 1)
# @param int $limit Results per page *(Optional)* (optional)
# @param string $order_by Field to order the results *(Optional)* (optional)
# @param string $order_direction Direction of ordering *(Optional)* (optional)
# @param int $_external_station_id Query on a different (content providing) station *(Optional)* (optional)
{
    my $params = {
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
    'presenter_id' => {
        data_type => 'int',
        description => 'Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'genre_id' => {
        data_type => 'int',
        description => 'Search on Genre ID *(Optional)*',
        required => '0',
    },
    'group_id' => {
        data_type => 'int',
        description => 'Search on Group ID *(Optional)*',
        required => '0',
    },
    'block_id' => {
        data_type => 'int',
        description => 'Search on Block ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'item_id' => {
        data_type => 'int',
        description => 'Search on Item ID *(Optional)* &#x60;(Relation)&#x60;',
        required => '0',
    },
    'disabled' => {
        data_type => 'int',
        description => 'Search on Disabled status *(Optional)*',
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
    __PACKAGE__->method_documentation->{ 'list_programs' } = {
        summary => 'Get all programs.',
        params => $params,
        returns => 'InlineResponse20011',
        };
}
# @return InlineResponse20011
#
sub list_programs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/programs';

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
    if ( exists $args{'block_id'}) {
        $query_params->{'block_id'} = $self->{api_client}->to_query_value($args{'block_id'});
    }

    # query params
    if ( exists $args{'item_id'}) {
        $query_params->{'item_id'} = $self->{api_client}->to_query_value($args{'item_id'});
    }

    # query params
    if ( exists $args{'disabled'}) {
        $query_params->{'disabled'} = $self->{api_client}->to_query_value($args{'disabled'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse20011', $response);
    return $_response_object;
}

#
# update_program_by_id
#
# Update program by id
#
# @param int $id ID of Program **(Required)** (required)
# @param ProgramDataInput $program_data_input Data *(Optional)* (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'ID of Program **(Required)**',
        required => '1',
    },
    'program_data_input' => {
        data_type => 'ProgramDataInput',
        description => 'Data *(Optional)*',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_program_by_id' } = {
        summary => 'Update program by id',
        params => $params,
        returns => 'InlineResponse202',
        };
}
# @return InlineResponse202
#
sub update_program_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_program_by_id");
    }

    # verify the required parameter 'program_data_input' is set
    unless (exists $args{'program_data_input'}) {
      croak("Missing the required parameter 'program_data_input' when calling update_program_by_id");
    }

    # parse inputs
    my $_resource_path = '/programs/{id}';

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
    if ( exists $args{'program_data_input'}) {
        $_body_data = $args{'program_data_input'};
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