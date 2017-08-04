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
package RadioManagerClient::StringApi;

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
# get_strings_by_name
#
# Get Strings (formatted)
# 
# @param string $name Name of Strings **(Required)** (required)
# @param boolean $full_model Full model or content only **(Required)** (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'Name of Strings **(Required)**',
        required => '1',
    },
    'full_model' => {
        data_type => 'boolean',
        description => 'Full model or content only **(Required)**',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_strings_by_name' } = { 
    	summary => 'Get Strings (formatted)',
        params => $params,
        returns => 'TextString',
        };
}
# @return TextString
#
sub get_strings_by_name {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling get_strings_by_name");
    }

    # verify the required parameter 'full_model' is set
    unless (exists $args{'full_model'}) {
      croak("Missing the required parameter 'full_model' when calling get_strings_by_name");
    }

    # parse inputs
    my $_resource_path = '/strings/{name}';

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
    if ( exists $args{'full_model'}) {
        $query_params->{'full_model'} = $self->{api_client}->to_query_value($args{'full_model'});
    }

    # path params
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('TextString', $response);
    return $_response_object;
}

1;
