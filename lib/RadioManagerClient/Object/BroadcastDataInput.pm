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
package RadioManagerClient::Object::BroadcastDataInput;

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
                                  class => 'BroadcastDataInput',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'program_id' => {
    	datatype => 'int',
    	base_name => 'program_id',
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
    'station_id' => {
    	datatype => 'int',
    	base_name => 'station_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'field_values' => {
    	datatype => 'BroadcastFieldValues',
    	base_name => 'field_values',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'title' => {
    	datatype => 'string',
    	base_name => 'title',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'start' => {
    	datatype => 'DateTime',
    	base_name => 'start',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'stop' => {
    	datatype => 'DateTime',
    	base_name => 'stop',
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
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
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
    'recommended' => {
    	datatype => 'boolean',
    	base_name => 'recommended',
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
    'published' => {
    	datatype => 'boolean',
    	base_name => 'published',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'repetition_uid' => {
    	datatype => 'string',
    	base_name => 'repetition_uid',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'repetition_type' => {
    	datatype => 'string',
    	base_name => 'repetition_type',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'repetition_end' => {
    	datatype => 'DateTime',
    	base_name => 'repetition_end',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'repetition_start' => {
    	datatype => 'DateTime',
    	base_name => 'repetition_start',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'repetition_days' => {
    	datatype => 'ARRAY[boolean]',
    	base_name => 'repetition_days',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'pty_code_id' => {
    	datatype => 'int',
    	base_name => 'pty_code_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[int]',
    	base_name => 'tags',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'presenters' => {
    	datatype => 'ARRAY[int]',
    	base_name => 'presenters',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'program_id' => 'int',
    'model_type_id' => 'int',
    'station_id' => 'int',
    'field_values' => 'BroadcastFieldValues',
    'title' => 'string',
    'start' => 'DateTime',
    'stop' => 'DateTime',
    'genre_id' => 'int',
    'description' => 'string',
    'short_name' => 'string',
    'medium_name' => 'string',
    'website' => 'string',
    'email' => 'string',
    'recommended' => 'boolean',
    'language' => 'string',
    'published' => 'boolean',
    'repetition_uid' => 'string',
    'repetition_type' => 'string',
    'repetition_end' => 'DateTime',
    'repetition_start' => 'DateTime',
    'repetition_days' => 'ARRAY[boolean]',
    'pty_code_id' => 'int',
    'tags' => 'ARRAY[int]',
    'presenters' => 'ARRAY[int]'
} );

__PACKAGE__->attribute_map( {
    'program_id' => 'program_id',
    'model_type_id' => 'model_type_id',
    'station_id' => 'station_id',
    'field_values' => 'field_values',
    'title' => 'title',
    'start' => 'start',
    'stop' => 'stop',
    'genre_id' => 'genre_id',
    'description' => 'description',
    'short_name' => 'short_name',
    'medium_name' => 'medium_name',
    'website' => 'website',
    'email' => 'email',
    'recommended' => 'recommended',
    'language' => 'language',
    'published' => 'published',
    'repetition_uid' => 'repetition_uid',
    'repetition_type' => 'repetition_type',
    'repetition_end' => 'repetition_end',
    'repetition_start' => 'repetition_start',
    'repetition_days' => 'repetition_days',
    'pty_code_id' => 'pty_code_id',
    'tags' => 'tags',
    'presenters' => 'presenters'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
