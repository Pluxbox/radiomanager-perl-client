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
package RadioManagerClient::Object::StationResultStation;

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
                                  class => 'StationResultStation',
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
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
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
    'system_name' => {
    	datatype => 'string',
    	base_name => 'system_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'short_name' => {
    	datatype => 'string',
    	base_name => 'short_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'medium_name' => {
    	datatype => 'string',
    	base_name => 'medium_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'website' => {
    	datatype => 'string',
    	base_name => 'website',
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
    'keywords' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'keywords',
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
    'sms' => {
    	datatype => 'string',
    	base_name => 'sms',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'telephone' => {
    	datatype => 'string',
    	base_name => 'telephone',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'genre_id' => {
    	datatype => 'int',
    	base_name => 'genre_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'language' => {
    	datatype => 'string',
    	base_name => 'language',
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
    'logo_rectangle' => {
    	datatype => 'string',
    	base_name => 'logo_rectangle',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'logo_128x128' => {
    	datatype => 'string',
    	base_name => 'logo_128x128',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'logo_320x320' => {
    	datatype => 'string',
    	base_name => 'logo_320x320',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'logo_600x600' => {
    	datatype => 'string',
    	base_name => 'logo_600x600',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'pay_off' => {
    	datatype => 'string',
    	base_name => 'pay_off',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'pty_code' => {
    	datatype => 'int',
    	base_name => 'pty_code',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'pty_type' => {
    	datatype => 'string',
    	base_name => 'pty_type',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'station_key' => {
    	datatype => 'string',
    	base_name => 'station_key',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'timezone' => {
    	datatype => 'string',
    	base_name => 'timezone',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'trial_date' => {
    	datatype => 'DateTime',
    	base_name => 'trial_date',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'id' => 'int',
    'name' => 'string',
    'created_at' => 'DateTime',
    'updated_at' => 'DateTime',
    'system_name' => 'string',
    'short_name' => 'string',
    'medium_name' => 'string',
    'website' => 'string',
    'email' => 'string',
    'keywords' => 'ARRAY[string]',
    'description' => 'string',
    'sms' => 'string',
    'telephone' => 'string',
    'genre_id' => 'int',
    'language' => 'string',
    'active' => 'boolean',
    'logo_rectangle' => 'string',
    'logo_128x128' => 'string',
    'logo_320x320' => 'string',
    'logo_600x600' => 'string',
    'pay_off' => 'string',
    'pty_code' => 'int',
    'pty_type' => 'string',
    'station_key' => 'string',
    'timezone' => 'string',
    'trial_date' => 'DateTime'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'name' => 'name',
    'created_at' => 'created_at',
    'updated_at' => 'updated_at',
    'system_name' => 'system_name',
    'short_name' => 'short_name',
    'medium_name' => 'medium_name',
    'website' => 'website',
    'email' => 'email',
    'keywords' => 'keywords',
    'description' => 'description',
    'sms' => 'sms',
    'telephone' => 'telephone',
    'genre_id' => 'genre_id',
    'language' => 'language',
    'active' => 'active',
    'logo_rectangle' => 'logo_rectangle',
    'logo_128x128' => 'logo_128x128',
    'logo_320x320' => 'logo_320x320',
    'logo_600x600' => 'logo_600x600',
    'pay_off' => 'pay_off',
    'pty_code' => 'pty_code',
    'pty_type' => 'pty_type',
    'station_key' => 'station_key',
    'timezone' => 'timezone',
    'trial_date' => 'trial_date'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
