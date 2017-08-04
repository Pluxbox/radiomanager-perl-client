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
package RadioManagerClient::UserApi;

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
# delete_user_by_id
#
# Remove user from station by Id
# 
# @param int $id id of User (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id of User',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_user_by_id' } = { 
    	summary => 'Remove user from station by Id',
        params => $params,
        returns => 'Success',
        };
}
# @return Success
#
sub delete_user_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_user_by_id");
    }

    # parse inputs
    my $_resource_path = '/users/{id}';

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
# get_user_by_id
#
# Get user by id
# 
# @param int $id id of User (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id of User',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_by_id' } = { 
    	summary => 'Get user by id',
        params => $params,
        returns => 'UserResult',
        };
}
# @return UserResult
#
sub get_user_by_id {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_user_by_id");
    }

    # parse inputs
    my $_resource_path = '/users/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('UserResult', $response);
    return $_response_object;
}

#
# invite_user_by_mail
#
# Invite user by mail
# 
# @param InviteUserData $data Data **(Required)** (required)
{
    my $params = {
    'data' => {
        data_type => 'InviteUserData',
        description => 'Data **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'invite_user_by_mail' } = { 
    	summary => 'Invite user by mail',
        params => $params,
        returns => 'InviteUserSuccess',
        };
}
# @return InviteUserSuccess
#
sub invite_user_by_mail {
    my ($self, %args) = @_;

    # verify the required parameter 'data' is set
    unless (exists $args{'data'}) {
      croak("Missing the required parameter 'data' when calling invite_user_by_mail");
    }

    # parse inputs
    my $_resource_path = '/users/invite';

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
    my $_response_object = $self->{api_client}->deserialize('InviteUserSuccess', $response);
    return $_response_object;
}

#
# list_users
#
# Get all users.
# 
# @param int $page Current page *(Optional)* (optional, default to 1)
# @param int $role_id Search on Role ID *(Optional)* (optional)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Current page *(Optional)*',
        required => '0',
    },
    'role_id' => {
        data_type => 'int',
        description => 'Search on Role ID *(Optional)*',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_users' } = { 
    	summary => 'Get all users.',
        params => $params,
        returns => 'UserResults',
        };
}
# @return UserResults
#
sub list_users {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users';

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
    if ( exists $args{'role_id'}) {
        $query_params->{'role_id'} = $self->{api_client}->to_query_value($args{'role_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserResults', $response);
    return $_response_object;
}

1;
