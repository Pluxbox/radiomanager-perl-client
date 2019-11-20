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
package RadioManagerClient::VisualSlideApi;

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
# get_visual_slide
#
# Get Visual Slide Image as Base64
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_visual_slide' } = { 
    	summary => 'Get Visual Slide Image as Base64',
        params => $params,
        returns => 'VisualResult',
        };
}
# @return VisualResult
#
sub get_visual_slide {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/visual';

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
    my $_response_object = $self->{api_client}->deserialize('VisualResult', $response);
    return $_response_object;
}

1;
