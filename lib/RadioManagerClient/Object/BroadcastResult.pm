=begin comment

RadioManager

RadioManager

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
package RadioManagerClient::Object::BroadcastResult;

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

use RadioManagerClient::Object::BlockRelationsProgram;
use RadioManagerClient::Object::Broadcast;
use RadioManagerClient::Object::BroadcastOutputOnly;
use RadioManagerClient::Object::BroadcastRelations;
use RadioManagerClient::Object::BroadcastRelationsBlocks;
use RadioManagerClient::Object::BroadcastRelationsGenre;
use RadioManagerClient::Object::BroadcastRelationsItems;
use RadioManagerClient::Object::BroadcastRelationsModelType;
use RadioManagerClient::Object::BroadcastRelationsPresenters;
use RadioManagerClient::Object::BroadcastRelationsTags;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

RadioManager

RadioManager

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
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

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
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
                                  class => 'BroadcastResult',
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
    'updated_at' => {
        datatype => 'DateTime',
        base_name => 'updated_at',
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
        datatype => 'object',
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
        datatype => 'string',
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
    'genre' => {
        datatype => 'BroadcastRelationsGenre',
        base_name => 'genre',
        description => '',
        format => '',
        read_only => '',
            },
    'items' => {
        datatype => 'BroadcastRelationsItems',
        base_name => 'items',
        description => '',
        format => '',
        read_only => '',
            },
    'blocks' => {
        datatype => 'BroadcastRelationsBlocks',
        base_name => 'blocks',
        description => '',
        format => '',
        read_only => '',
            },
    'program' => {
        datatype => 'BlockRelationsProgram',
        base_name => 'program',
        description => '',
        format => '',
        read_only => '',
            },
    'tags' => {
        datatype => 'BroadcastRelationsTags',
        base_name => 'tags',
        description => '',
        format => '',
        read_only => '',
            },
    'presenters' => {
        datatype => 'BroadcastRelationsPresenters',
        base_name => 'presenters',
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

__PACKAGE__->openapi_types( {
    'id' => 'int',
    'updated_at' => 'DateTime',
    'created_at' => 'DateTime',
    'deleted_at' => 'DateTime',
    '_external_station_id' => 'int',
    'program_id' => 'int',
    'model_type_id' => 'int',
    'station_id' => 'int',
    'field_values' => 'object',
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
    'repetition_days' => 'string',
    'pty_code_id' => 'int',
    'genre' => 'BroadcastRelationsGenre',
    'items' => 'BroadcastRelationsItems',
    'blocks' => 'BroadcastRelationsBlocks',
    'program' => 'BlockRelationsProgram',
    'tags' => 'BroadcastRelationsTags',
    'presenters' => 'BroadcastRelationsPresenters',
    'model_type' => 'BroadcastRelationsModelType'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'updated_at' => 'updated_at',
    'created_at' => 'created_at',
    'deleted_at' => 'deleted_at',
    '_external_station_id' => '_external_station_id',
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
    'genre' => 'genre',
    'items' => 'items',
    'blocks' => 'blocks',
    'program' => 'program',
    'tags' => 'tags',
    'presenters' => 'presenters',
    'model_type' => 'model_type'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
