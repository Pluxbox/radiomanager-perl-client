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
package RadioManagerClient::Object::UserResult;

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
                                  class => 'UserResult',
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
    'email' => {
    	datatype => 'string',
    	base_name => 'email',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'firstname' => {
    	datatype => 'string',
    	base_name => 'firstname',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'lastname' => {
    	datatype => 'string',
    	base_name => 'lastname',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'phone' => {
    	datatype => 'string',
    	base_name => 'phone',
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
    'active' => {
    	datatype => 'boolean',
    	base_name => 'active',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'settings' => {
    	datatype => 'UserResultSettings',
    	base_name => 'settings',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'language' => {
    	datatype => 'boolean',
    	base_name => 'language',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'active_external_station_id' => {
    	datatype => 'int',
    	base_name => 'active_external_station_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'role_id' => {
    	datatype => 'int',
    	base_name => 'role_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'id' => 'int',
    'email' => 'string',
    'firstname' => 'string',
    'lastname' => 'string',
    'phone' => 'string',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'active' => 'boolean',
    'settings' => 'UserResultSettings',
    'language' => 'boolean',
    'active_external_station_id' => 'int',
    'role_id' => 'int'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'email' => 'email',
    'firstname' => 'firstname',
    'lastname' => 'lastname',
    'phone' => 'phone',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at',
    'active' => 'active',
    'settings' => 'settings',
    'language' => 'language',
    'active_external_station_id' => 'active_external_station_id',
    'role_id' => 'role_id'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
