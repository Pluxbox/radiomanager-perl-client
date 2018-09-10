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
package RadioManagerClient::Object::StoryResult;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use RadioManagerClient::Object::BroadcastRelationsModelType;
use RadioManagerClient::Object::Story;
use RadioManagerClient::Object::StoryOutputOnly;
use RadioManagerClient::Object::StoryRelations;
use RadioManagerClient::Object::StoryRelationsItems;
use RadioManagerClient::Object::StoryRelationsTags;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "RadioManagerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'StoryResult',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'created_at' => {
    	datatype => 'DateTime',
    	base_name => 'created_at',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'updated_at' => {
    	datatype => 'DateTime',
    	base_name => 'updated_at',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'deleted_at' => {
    	datatype => 'DateTime',
    	base_name => 'deleted_at',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    '_external_station_id' => {
    	datatype => 'int',
    	base_name => '_external_station_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'model_type_id' => {
    	datatype => 'int',
    	base_name => 'model_type_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'recommended' => {
    	datatype => 'boolean',
    	base_name => 'recommended',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'field_values' => {
    	datatype => 'object',
    	base_name => 'field_values',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'StoryRelationsTags',
    	base_name => 'tags',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'items' => {
    	datatype => 'StoryRelationsItems',
    	base_name => 'items',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'model_type' => {
    	datatype => 'BroadcastRelationsModelType',
    	base_name => 'model_type',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'id' => 'int',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    '_external_station_id' => 'int',
    'model_type_id' => 'int',
    'recommended' => 'boolean',
    'field_values' => 'object',
    'name' => 'string',
    'description' => 'string',
    'tags' => 'StoryRelationsTags',
    'items' => 'StoryRelationsItems',
    'model_type' => 'BroadcastRelationsModelType'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at',
    'deleted_at' => 'deleted_at',
    '_external_station_id' => '_external_station_id',
    'model_type_id' => 'model_type_id',
    'recommended' => 'recommended',
    'field_values' => 'field_values',
    'name' => 'name',
    'description' => 'description',
    'tags' => 'tags',
    'items' => 'items',
    'model_type' => 'model_type'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
