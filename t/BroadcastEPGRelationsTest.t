=begin comment

RadioManager

RadioManager

OpenAPI spec version: 2.0
Contact: support@pluxbox.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the Swagger Codegen
# Please update the test cases below to test the model.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 2;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;


use_ok('RadioManagerClient::Object::BroadcastEPGRelations');

my $instance = RadioManagerClient::Object::BroadcastEPGRelations->new();

isa_ok($instance, 'RadioManagerClient::Object::BroadcastEPGRelations');

