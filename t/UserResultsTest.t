=begin comment

RadioManager

RadioManager

The version of the OpenAPI document: 2.0
Contact: support@pluxbox.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by the OpenAPI Generator
# Please update the test cases below to test the model.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 2;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;


use_ok('RadioManagerClient::Object::UserResults');

my $instance = RadioManagerClient::Object::UserResults->new();

isa_ok($instance, 'RadioManagerClient::Object::UserResults');

