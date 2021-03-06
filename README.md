# NAME

Pluxbox RadioManager gives you the power, flexibility and speed you always wanted in a lightweight and easy-to-use web-based radio solution. With Pluxbox RadioManager you can organise your radio workflow and automate your omnichannel communication with your listeners. We offer wide range specialised services for the radio and connections like Hybrid Radio, Visual Radio, your website and social media without losing focus on your broadcast. For more information visit: pluxbox.com

- API version: 2.0
- Package version: 1.1.12
- Build package: io.swagger.codegen.languages.PerlClientCodegen
For more information, please visit [https://pluxbox.com](https://pluxbox.com)

## A note on Moose

This role is the only component of the library that uses Moose. See
RadioManagerClient::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'RadioManagerClient::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<RadioManagerClient::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a RadioManagerClient::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://github.com/swagger-api/swagger-codegen` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/swagger-api/swagger-codegen.git
          $ cd swagger-codegen
          $ mvn package
          $ java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
    -i [URL or file path to JSON swagger API spec] \
    -l perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the Swagger
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# LOAD THE MODULES

To load the API packages:
```perl
use RadioManagerClient::BlockApi;
use RadioManagerClient::BroadcastApi;
use RadioManagerClient::CampaignApi;
use RadioManagerClient::ContactApi;
use RadioManagerClient::GenreApi;
use RadioManagerClient::ItemApi;
use RadioManagerClient::ModelTypeApi;
use RadioManagerClient::PresenterApi;
use RadioManagerClient::ProgramApi;
use RadioManagerClient::StationApi;
use RadioManagerClient::StoryApi;
use RadioManagerClient::StringApi;
use RadioManagerClient::TagApi;
use RadioManagerClient::UserApi;
use RadioManagerClient::VisualSlideApi;

```

To load the models:
```perl
use RadioManagerClient::Object::Block;
use RadioManagerClient::Object::BlockRelations;
use RadioManagerClient::Object::BlockRelationsBroadcast;
use RadioManagerClient::Object::BlockRelationsBroadcastParams;
use RadioManagerClient::Object::BlockRelationsItems;
use RadioManagerClient::Object::BlockRelationsItemsParams;
use RadioManagerClient::Object::BlockRelationsProgram;
use RadioManagerClient::Object::BlockResults;
use RadioManagerClient::Object::Broadcast;
use RadioManagerClient::Object::BroadcastEPGDay;
use RadioManagerClient::Object::BroadcastEPGRelations;
use RadioManagerClient::Object::BroadcastInputOnly;
use RadioManagerClient::Object::BroadcastOutputOnly;
use RadioManagerClient::Object::BroadcastRelations;
use RadioManagerClient::Object::BroadcastRelationsBlocks;
use RadioManagerClient::Object::BroadcastRelationsGenre;
use RadioManagerClient::Object::BroadcastRelationsItems;
use RadioManagerClient::Object::BroadcastRelationsItemsParams;
use RadioManagerClient::Object::BroadcastRelationsModelType;
use RadioManagerClient::Object::BroadcastRelationsPresenters;
use RadioManagerClient::Object::BroadcastRelationsTags;
use RadioManagerClient::Object::BroadcastResults;
use RadioManagerClient::Object::Campaign;
use RadioManagerClient::Object::CampaignOutputOnly;
use RadioManagerClient::Object::CampaignRelations;
use RadioManagerClient::Object::CampaignRelationsItems;
use RadioManagerClient::Object::CampaignRelationsItemsParams;
use RadioManagerClient::Object::CampaignResults;
use RadioManagerClient::Object::CampaignTemplateItem;
use RadioManagerClient::Object::Contact;
use RadioManagerClient::Object::ContactOutputOnly;
use RadioManagerClient::Object::ContactRelations;
use RadioManagerClient::Object::ContactRelationsItems;
use RadioManagerClient::Object::ContactRelationsTags;
use RadioManagerClient::Object::ContactRelationsTagsParams;
use RadioManagerClient::Object::ContactResults;
use RadioManagerClient::Object::Data;
use RadioManagerClient::Object::Data1;
use RadioManagerClient::Object::Data2;
use RadioManagerClient::Object::Data3;
use RadioManagerClient::Object::EPGResults;
use RadioManagerClient::Object::Forbidden;
use RadioManagerClient::Object::Genre;
use RadioManagerClient::Object::GenreOutputOnly;
use RadioManagerClient::Object::GenreRelations;
use RadioManagerClient::Object::GenreRelationsBroadcasts;
use RadioManagerClient::Object::GenreRelationsBroadcastsParams;
use RadioManagerClient::Object::GenreRelationsPrograms;
use RadioManagerClient::Object::GenreResults;
use RadioManagerClient::Object::ImportItem;
use RadioManagerClient::Object::InlineResponse202;
use RadioManagerClient::Object::InternalServerError;
use RadioManagerClient::Object::InviteUserData;
use RadioManagerClient::Object::InviteUserSuccess;
use RadioManagerClient::Object::Item;
use RadioManagerClient::Object::ItemInputOnly;
use RadioManagerClient::Object::ItemOutputOnly;
use RadioManagerClient::Object::ItemRelations;
use RadioManagerClient::Object::ItemRelationsBlock;
use RadioManagerClient::Object::ItemRelationsCampaign;
use RadioManagerClient::Object::ItemRelationsContacts;
use RadioManagerClient::Object::ItemRelationsContactsParams;
use RadioManagerClient::Object::ItemRelationsProgram;
use RadioManagerClient::Object::ItemRelationsTags;
use RadioManagerClient::Object::ItemResults;
use RadioManagerClient::Object::ModelType;
use RadioManagerClient::Object::ModelTypeOptions;
use RadioManagerClient::Object::ModelTypeOutputOnly;
use RadioManagerClient::Object::ModelTypeRelations;
use RadioManagerClient::Object::ModelTypeRelationsBroadcasts;
use RadioManagerClient::Object::ModelTypeRelationsCampaigns;
use RadioManagerClient::Object::ModelTypeRelationsCampaignsParams;
use RadioManagerClient::Object::ModelTypeRelationsContacts;
use RadioManagerClient::Object::ModelTypeRelationsItems;
use RadioManagerClient::Object::ModelTypeRelationsPresenters;
use RadioManagerClient::Object::ModelTypeRelationsPrograms;
use RadioManagerClient::Object::ModelTypeResults;
use RadioManagerClient::Object::NotFound;
use RadioManagerClient::Object::PostSuccess;
use RadioManagerClient::Object::Presenter;
use RadioManagerClient::Object::PresenterOutputOnly;
use RadioManagerClient::Object::PresenterRelations;
use RadioManagerClient::Object::PresenterRelationsBroadcasts;
use RadioManagerClient::Object::PresenterRelationsPrograms;
use RadioManagerClient::Object::PresenterRelationsProgramsParams;
use RadioManagerClient::Object::PresenterResults;
use RadioManagerClient::Object::Program;
use RadioManagerClient::Object::ProgramInputOnly;
use RadioManagerClient::Object::ProgramOutputOnly;
use RadioManagerClient::Object::ProgramRelations;
use RadioManagerClient::Object::ProgramRelationsBlocks;
use RadioManagerClient::Object::ProgramRelationsBroadcasts;
use RadioManagerClient::Object::ProgramRelationsItems;
use RadioManagerClient::Object::ProgramRelationsItemsParams;
use RadioManagerClient::Object::ProgramRelationsPresenters;
use RadioManagerClient::Object::ProgramRelationsTags;
use RadioManagerClient::Object::ProgramResults;
use RadioManagerClient::Object::ReadOnly;
use RadioManagerClient::Object::RelationsPlaceholder;
use RadioManagerClient::Object::StationResult;
use RadioManagerClient::Object::StationResultStation;
use RadioManagerClient::Object::StationResultStationStartDays;
use RadioManagerClient::Object::Story;
use RadioManagerClient::Object::StoryInputOnly;
use RadioManagerClient::Object::StoryOutputOnly;
use RadioManagerClient::Object::StoryRelations;
use RadioManagerClient::Object::StoryRelationsItems;
use RadioManagerClient::Object::StoryRelationsTags;
use RadioManagerClient::Object::StoryRelationsTagsParams;
use RadioManagerClient::Object::StoryResults;
use RadioManagerClient::Object::Success;
use RadioManagerClient::Object::Tag;
use RadioManagerClient::Object::TagOutputOnly;
use RadioManagerClient::Object::TagRelations;
use RadioManagerClient::Object::TagRelationsBroadcasts;
use RadioManagerClient::Object::TagRelationsBroadcastsParams;
use RadioManagerClient::Object::TagRelationsContacts;
use RadioManagerClient::Object::TagRelationsItems;
use RadioManagerClient::Object::TagRelationsPrograms;
use RadioManagerClient::Object::TagResults;
use RadioManagerClient::Object::TextString;
use RadioManagerClient::Object::TooManyRequests;
use RadioManagerClient::Object::UnprocessableEntity;
use RadioManagerClient::Object::UserResult;
use RadioManagerClient::Object::UserResultRoles;
use RadioManagerClient::Object::UserResultSettings;
use RadioManagerClient::Object::UserResults;
use RadioManagerClient::Object::VisualResult;
use RadioManagerClient::Object::BlockResult;
use RadioManagerClient::Object::BroadcastDataInput;
use RadioManagerClient::Object::BroadcastEPGResult;
use RadioManagerClient::Object::BroadcastResult;
use RadioManagerClient::Object::CampaignDataInput;
use RadioManagerClient::Object::CampaignResult;
use RadioManagerClient::Object::ContactDataInput;
use RadioManagerClient::Object::ContactResult;
use RadioManagerClient::Object::GenreResult;
use RadioManagerClient::Object::ItemDataInput;
use RadioManagerClient::Object::ItemResult;
use RadioManagerClient::Object::ModelTypeResult;
use RadioManagerClient::Object::PresenterDataInput;
use RadioManagerClient::Object::PresenterEPGResult;
use RadioManagerClient::Object::PresenterResult;
use RadioManagerClient::Object::ProgramDataInput;
use RadioManagerClient::Object::ProgramResult;
use RadioManagerClient::Object::StoryDataInput;
use RadioManagerClient::Object::StoryResult;
use RadioManagerClient::Object::TagDataInput;
use RadioManagerClient::Object::TagResult;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use RadioManagerClient::BlockApi;
use RadioManagerClient::BroadcastApi;
use RadioManagerClient::CampaignApi;
use RadioManagerClient::ContactApi;
use RadioManagerClient::GenreApi;
use RadioManagerClient::ItemApi;
use RadioManagerClient::ModelTypeApi;
use RadioManagerClient::PresenterApi;
use RadioManagerClient::ProgramApi;
use RadioManagerClient::StationApi;
use RadioManagerClient::StoryApi;
use RadioManagerClient::StringApi;
use RadioManagerClient::TagApi;
use RadioManagerClient::UserApi;
use RadioManagerClient::VisualSlideApi;

# load the models
use RadioManagerClient::Object::Block;
use RadioManagerClient::Object::BlockRelations;
use RadioManagerClient::Object::BlockRelationsBroadcast;
use RadioManagerClient::Object::BlockRelationsBroadcastParams;
use RadioManagerClient::Object::BlockRelationsItems;
use RadioManagerClient::Object::BlockRelationsItemsParams;
use RadioManagerClient::Object::BlockRelationsProgram;
use RadioManagerClient::Object::BlockResults;
use RadioManagerClient::Object::Broadcast;
use RadioManagerClient::Object::BroadcastEPGDay;
use RadioManagerClient::Object::BroadcastEPGRelations;
use RadioManagerClient::Object::BroadcastInputOnly;
use RadioManagerClient::Object::BroadcastOutputOnly;
use RadioManagerClient::Object::BroadcastRelations;
use RadioManagerClient::Object::BroadcastRelationsBlocks;
use RadioManagerClient::Object::BroadcastRelationsGenre;
use RadioManagerClient::Object::BroadcastRelationsItems;
use RadioManagerClient::Object::BroadcastRelationsItemsParams;
use RadioManagerClient::Object::BroadcastRelationsModelType;
use RadioManagerClient::Object::BroadcastRelationsPresenters;
use RadioManagerClient::Object::BroadcastRelationsTags;
use RadioManagerClient::Object::BroadcastResults;
use RadioManagerClient::Object::Campaign;
use RadioManagerClient::Object::CampaignOutputOnly;
use RadioManagerClient::Object::CampaignRelations;
use RadioManagerClient::Object::CampaignRelationsItems;
use RadioManagerClient::Object::CampaignRelationsItemsParams;
use RadioManagerClient::Object::CampaignResults;
use RadioManagerClient::Object::CampaignTemplateItem;
use RadioManagerClient::Object::Contact;
use RadioManagerClient::Object::ContactOutputOnly;
use RadioManagerClient::Object::ContactRelations;
use RadioManagerClient::Object::ContactRelationsItems;
use RadioManagerClient::Object::ContactRelationsTags;
use RadioManagerClient::Object::ContactRelationsTagsParams;
use RadioManagerClient::Object::ContactResults;
use RadioManagerClient::Object::Data;
use RadioManagerClient::Object::Data1;
use RadioManagerClient::Object::Data2;
use RadioManagerClient::Object::Data3;
use RadioManagerClient::Object::EPGResults;
use RadioManagerClient::Object::Forbidden;
use RadioManagerClient::Object::Genre;
use RadioManagerClient::Object::GenreOutputOnly;
use RadioManagerClient::Object::GenreRelations;
use RadioManagerClient::Object::GenreRelationsBroadcasts;
use RadioManagerClient::Object::GenreRelationsBroadcastsParams;
use RadioManagerClient::Object::GenreRelationsPrograms;
use RadioManagerClient::Object::GenreResults;
use RadioManagerClient::Object::ImportItem;
use RadioManagerClient::Object::InlineResponse202;
use RadioManagerClient::Object::InternalServerError;
use RadioManagerClient::Object::InviteUserData;
use RadioManagerClient::Object::InviteUserSuccess;
use RadioManagerClient::Object::Item;
use RadioManagerClient::Object::ItemInputOnly;
use RadioManagerClient::Object::ItemOutputOnly;
use RadioManagerClient::Object::ItemRelations;
use RadioManagerClient::Object::ItemRelationsBlock;
use RadioManagerClient::Object::ItemRelationsCampaign;
use RadioManagerClient::Object::ItemRelationsContacts;
use RadioManagerClient::Object::ItemRelationsContactsParams;
use RadioManagerClient::Object::ItemRelationsProgram;
use RadioManagerClient::Object::ItemRelationsTags;
use RadioManagerClient::Object::ItemResults;
use RadioManagerClient::Object::ModelType;
use RadioManagerClient::Object::ModelTypeOptions;
use RadioManagerClient::Object::ModelTypeOutputOnly;
use RadioManagerClient::Object::ModelTypeRelations;
use RadioManagerClient::Object::ModelTypeRelationsBroadcasts;
use RadioManagerClient::Object::ModelTypeRelationsCampaigns;
use RadioManagerClient::Object::ModelTypeRelationsCampaignsParams;
use RadioManagerClient::Object::ModelTypeRelationsContacts;
use RadioManagerClient::Object::ModelTypeRelationsItems;
use RadioManagerClient::Object::ModelTypeRelationsPresenters;
use RadioManagerClient::Object::ModelTypeRelationsPrograms;
use RadioManagerClient::Object::ModelTypeResults;
use RadioManagerClient::Object::NotFound;
use RadioManagerClient::Object::PostSuccess;
use RadioManagerClient::Object::Presenter;
use RadioManagerClient::Object::PresenterOutputOnly;
use RadioManagerClient::Object::PresenterRelations;
use RadioManagerClient::Object::PresenterRelationsBroadcasts;
use RadioManagerClient::Object::PresenterRelationsPrograms;
use RadioManagerClient::Object::PresenterRelationsProgramsParams;
use RadioManagerClient::Object::PresenterResults;
use RadioManagerClient::Object::Program;
use RadioManagerClient::Object::ProgramInputOnly;
use RadioManagerClient::Object::ProgramOutputOnly;
use RadioManagerClient::Object::ProgramRelations;
use RadioManagerClient::Object::ProgramRelationsBlocks;
use RadioManagerClient::Object::ProgramRelationsBroadcasts;
use RadioManagerClient::Object::ProgramRelationsItems;
use RadioManagerClient::Object::ProgramRelationsItemsParams;
use RadioManagerClient::Object::ProgramRelationsPresenters;
use RadioManagerClient::Object::ProgramRelationsTags;
use RadioManagerClient::Object::ProgramResults;
use RadioManagerClient::Object::ReadOnly;
use RadioManagerClient::Object::RelationsPlaceholder;
use RadioManagerClient::Object::StationResult;
use RadioManagerClient::Object::StationResultStation;
use RadioManagerClient::Object::StationResultStationStartDays;
use RadioManagerClient::Object::Story;
use RadioManagerClient::Object::StoryInputOnly;
use RadioManagerClient::Object::StoryOutputOnly;
use RadioManagerClient::Object::StoryRelations;
use RadioManagerClient::Object::StoryRelationsItems;
use RadioManagerClient::Object::StoryRelationsTags;
use RadioManagerClient::Object::StoryRelationsTagsParams;
use RadioManagerClient::Object::StoryResults;
use RadioManagerClient::Object::Success;
use RadioManagerClient::Object::Tag;
use RadioManagerClient::Object::TagOutputOnly;
use RadioManagerClient::Object::TagRelations;
use RadioManagerClient::Object::TagRelationsBroadcasts;
use RadioManagerClient::Object::TagRelationsBroadcastsParams;
use RadioManagerClient::Object::TagRelationsContacts;
use RadioManagerClient::Object::TagRelationsItems;
use RadioManagerClient::Object::TagRelationsPrograms;
use RadioManagerClient::Object::TagResults;
use RadioManagerClient::Object::TextString;
use RadioManagerClient::Object::TooManyRequests;
use RadioManagerClient::Object::UnprocessableEntity;
use RadioManagerClient::Object::UserResult;
use RadioManagerClient::Object::UserResultRoles;
use RadioManagerClient::Object::UserResultSettings;
use RadioManagerClient::Object::UserResults;
use RadioManagerClient::Object::VisualResult;
use RadioManagerClient::Object::BlockResult;
use RadioManagerClient::Object::BroadcastDataInput;
use RadioManagerClient::Object::BroadcastEPGResult;
use RadioManagerClient::Object::BroadcastResult;
use RadioManagerClient::Object::CampaignDataInput;
use RadioManagerClient::Object::CampaignResult;
use RadioManagerClient::Object::ContactDataInput;
use RadioManagerClient::Object::ContactResult;
use RadioManagerClient::Object::GenreResult;
use RadioManagerClient::Object::ItemDataInput;
use RadioManagerClient::Object::ItemResult;
use RadioManagerClient::Object::ModelTypeResult;
use RadioManagerClient::Object::PresenterDataInput;
use RadioManagerClient::Object::PresenterEPGResult;
use RadioManagerClient::Object::PresenterResult;
use RadioManagerClient::Object::ProgramDataInput;
use RadioManagerClient::Object::ProgramResult;
use RadioManagerClient::Object::StoryDataInput;
use RadioManagerClient::Object::StoryResult;
use RadioManagerClient::Object::TagDataInput;
use RadioManagerClient::Object::TagResult;

# for displaying the API response data
use Data::Dumper;
use RadioManagerClient::;

my $api_instance = RadioManagerClient::->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Block **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->get_block_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlockApi->get_block_by_id: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://radiomanager.io/api/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BlockApi* | [**get_block_by_id**](docs/BlockApi.md#get_block_by_id) | **GET** /blocks/{id} | Get block by id
*BlockApi* | [**get_current_block**](docs/BlockApi.md#get_current_block) | **GET** /blocks/current | Get current Block
*BlockApi* | [**get_next_block**](docs/BlockApi.md#get_next_block) | **GET** /blocks/next | Get upcoming Block
*BlockApi* | [**list_blocks**](docs/BlockApi.md#list_blocks) | **GET** /blocks | Get a list of all blocks currently in your station.
*BroadcastApi* | [**create_broadcast**](docs/BroadcastApi.md#create_broadcast) | **POST** /broadcasts | Create broadcast.
*BroadcastApi* | [**delete_broadcast_by_id**](docs/BroadcastApi.md#delete_broadcast_by_id) | **DELETE** /broadcasts/{id} | Delete broadcast by id
*BroadcastApi* | [**get_broadcast_by_id**](docs/BroadcastApi.md#get_broadcast_by_id) | **GET** /broadcasts/{id} | Get broadcast by id
*BroadcastApi* | [**get_current_broadcast**](docs/BroadcastApi.md#get_current_broadcast) | **GET** /broadcasts/current | Get current Broadcast
*BroadcastApi* | [**get_daily_epg**](docs/BroadcastApi.md#get_daily_epg) | **GET** /broadcasts/epg/daily | Get daily EPG
*BroadcastApi* | [**get_epg_by_date**](docs/BroadcastApi.md#get_epg_by_date) | **GET** /broadcasts/epg | Get EPG by date
*BroadcastApi* | [**get_next_broadcast**](docs/BroadcastApi.md#get_next_broadcast) | **GET** /broadcasts/next | Get next Broadcast
*BroadcastApi* | [**get_weekly_epg**](docs/BroadcastApi.md#get_weekly_epg) | **GET** /broadcasts/epg/weekly | Get weekly EPG
*BroadcastApi* | [**list_broadcasts**](docs/BroadcastApi.md#list_broadcasts) | **GET** /broadcasts | Get all broadcasts.
*BroadcastApi* | [**print_broadcast_by_id**](docs/BroadcastApi.md#print_broadcast_by_id) | **GET** /broadcasts/print/{id} | Print broadcast by id with template
*BroadcastApi* | [**update_broadcast_by_id**](docs/BroadcastApi.md#update_broadcast_by_id) | **PATCH** /broadcasts/{id} | Update broadcast by id
*CampaignApi* | [**create_campaign**](docs/CampaignApi.md#create_campaign) | **POST** /campaigns | Create campaign.
*CampaignApi* | [**delete_campaign_by_id**](docs/CampaignApi.md#delete_campaign_by_id) | **DELETE** /campaigns/{id} | Delete campaign by id
*CampaignApi* | [**get_campaign_by_id**](docs/CampaignApi.md#get_campaign_by_id) | **GET** /campaigns/{id} | Get campaign by id
*CampaignApi* | [**list_campaigns**](docs/CampaignApi.md#list_campaigns) | **GET** /campaigns | Get all campaigns.
*CampaignApi* | [**update_campaign_by_id**](docs/CampaignApi.md#update_campaign_by_id) | **PATCH** /campaigns/{id} | Update campaign by id
*ContactApi* | [**create_contact**](docs/ContactApi.md#create_contact) | **POST** /contacts | Create contact.
*ContactApi* | [**delete_contact_by_id**](docs/ContactApi.md#delete_contact_by_id) | **DELETE** /contacts/{id} | Delete contact by id
*ContactApi* | [**get_contact_by_id**](docs/ContactApi.md#get_contact_by_id) | **GET** /contacts/{id} | Get contact by id
*ContactApi* | [**list_contacts**](docs/ContactApi.md#list_contacts) | **GET** /contacts | Get all contacts.
*ContactApi* | [**update_contact_by_id**](docs/ContactApi.md#update_contact_by_id) | **PATCH** /contacts/{id} | Update contact by id
*GenreApi* | [**get_genre_by_id**](docs/GenreApi.md#get_genre_by_id) | **GET** /genres/{id} | Get genre by id
*GenreApi* | [**list_genres**](docs/GenreApi.md#list_genres) | **GET** /genres | List all genres.
*ItemApi* | [**create_item**](docs/ItemApi.md#create_item) | **POST** /items | Create an new item.
*ItemApi* | [**current_item_post_structure**](docs/ItemApi.md#current_item_post_structure) | **POST** /items/current/structure | Post a current playing item, keep structure
*ItemApi* | [**current_item_post_timing**](docs/ItemApi.md#current_item_post_timing) | **POST** /items/current/timing | Post a current playing item
*ItemApi* | [**delete_item_by_id**](docs/ItemApi.md#delete_item_by_id) | **DELETE** /items/{id} | Delete item by ID.
*ItemApi* | [**get_current_item**](docs/ItemApi.md#get_current_item) | **GET** /items/current | Get current Item
*ItemApi* | [**get_item_by_id**](docs/ItemApi.md#get_item_by_id) | **GET** /items/{id} | Get extended item details by ID.
*ItemApi* | [**list_items**](docs/ItemApi.md#list_items) | **GET** /items | Get a list of all the items currently in your station.
*ItemApi* | [**playlist_post_merge**](docs/ItemApi.md#playlist_post_merge) | **POST** /items/playlist/merge | Post a playlist, do not remove previously imported items
*ItemApi* | [**playlist_post_structure**](docs/ItemApi.md#playlist_post_structure) | **POST** /items/playlist/structure | Post a playlist, keep current structure
*ItemApi* | [**playlist_post_timing**](docs/ItemApi.md#playlist_post_timing) | **POST** /items/playlist/timing | Post a playlist
*ItemApi* | [**stop_current_item**](docs/ItemApi.md#stop_current_item) | **POST** /items/stopcurrent | Stop an Item
*ItemApi* | [**update_item_by_id**](docs/ItemApi.md#update_item_by_id) | **PATCH** /items/{id} | Update extended item details by ID.
*ModelTypeApi* | [**get_model_type_by_id**](docs/ModelTypeApi.md#get_model_type_by_id) | **GET** /model_types/{id} | Get modelType by id
*ModelTypeApi* | [**list_model_types**](docs/ModelTypeApi.md#list_model_types) | **GET** /model_types | Get all modelTypes.
*PresenterApi* | [**create_presenter**](docs/PresenterApi.md#create_presenter) | **POST** /presenters | Create presenter.
*PresenterApi* | [**delete_presenter_by_id**](docs/PresenterApi.md#delete_presenter_by_id) | **DELETE** /presenters/{id} | Delete presenter by id
*PresenterApi* | [**get_presenter_by_id**](docs/PresenterApi.md#get_presenter_by_id) | **GET** /presenters/{id} | Get presenter by id
*PresenterApi* | [**list_presenters**](docs/PresenterApi.md#list_presenters) | **GET** /presenters | Get all presenters.
*PresenterApi* | [**update_presenter_by_id**](docs/PresenterApi.md#update_presenter_by_id) | **PATCH** /presenters/{id} | Update presenter by id
*ProgramApi* | [**create_program**](docs/ProgramApi.md#create_program) | **POST** /programs | Create program.
*ProgramApi* | [**delete_program_by_id**](docs/ProgramApi.md#delete_program_by_id) | **DELETE** /programs/{id} | Delete program by id
*ProgramApi* | [**get_program_by_id**](docs/ProgramApi.md#get_program_by_id) | **GET** /programs/{id} | Get program by id
*ProgramApi* | [**list_programs**](docs/ProgramApi.md#list_programs) | **GET** /programs | Get all programs.
*ProgramApi* | [**update_program_by_id**](docs/ProgramApi.md#update_program_by_id) | **PATCH** /programs/{id} | Update program by id
*StationApi* | [**get_station**](docs/StationApi.md#get_station) | **GET** /station | Get own station only
*StoryApi* | [**create_story**](docs/StoryApi.md#create_story) | **POST** /stories | Create story.
*StoryApi* | [**delete_story_by_id**](docs/StoryApi.md#delete_story_by_id) | **DELETE** /stories/{id} | Delete story by id
*StoryApi* | [**get_story_by_id**](docs/StoryApi.md#get_story_by_id) | **GET** /stories/{id} | Get story by id
*StoryApi* | [**list_stories**](docs/StoryApi.md#list_stories) | **GET** /stories | Get all stories.
*StoryApi* | [**update_story_by_id**](docs/StoryApi.md#update_story_by_id) | **PATCH** /stories/{id} | Update story by id
*StringApi* | [**get_strings_by_name**](docs/StringApi.md#get_strings_by_name) | **GET** /strings/{name} | Get Strings (formatted)
*TagApi* | [**create_tag**](docs/TagApi.md#create_tag) | **POST** /tags | Create tag.
*TagApi* | [**delete_tag_by_id**](docs/TagApi.md#delete_tag_by_id) | **DELETE** /tags/{id} | Delete tag by id
*TagApi* | [**get_tag_by_id**](docs/TagApi.md#get_tag_by_id) | **GET** /tags/{id} | Get tags by id
*TagApi* | [**list_tags**](docs/TagApi.md#list_tags) | **GET** /tags | Get a list of all the tags currently in your station.
*TagApi* | [**update_tag_by_id**](docs/TagApi.md#update_tag_by_id) | **PATCH** /tags/{id} | Update tag by id
*UserApi* | [**delete_user_by_id**](docs/UserApi.md#delete_user_by_id) | **DELETE** /users/{id} | Remove user from station by Id
*UserApi* | [**get_user_by_id**](docs/UserApi.md#get_user_by_id) | **GET** /users/{id} | Get user by id
*UserApi* | [**invite_user_by_mail**](docs/UserApi.md#invite_user_by_mail) | **POST** /users/invite | Invite user by mail
*UserApi* | [**list_users**](docs/UserApi.md#list_users) | **GET** /users | Get all users.
*VisualSlideApi* | [**get_visual_slide**](docs/VisualSlideApi.md#get_visual_slide) | **GET** /visual | Get Visual Slide Image as Base64


# DOCUMENTATION FOR MODELS
 - [RadioManagerClient::Object::Block](docs/Block.md)
 - [RadioManagerClient::Object::BlockRelations](docs/BlockRelations.md)
 - [RadioManagerClient::Object::BlockRelationsBroadcast](docs/BlockRelationsBroadcast.md)
 - [RadioManagerClient::Object::BlockRelationsBroadcastParams](docs/BlockRelationsBroadcastParams.md)
 - [RadioManagerClient::Object::BlockRelationsItems](docs/BlockRelationsItems.md)
 - [RadioManagerClient::Object::BlockRelationsItemsParams](docs/BlockRelationsItemsParams.md)
 - [RadioManagerClient::Object::BlockRelationsProgram](docs/BlockRelationsProgram.md)
 - [RadioManagerClient::Object::BlockResults](docs/BlockResults.md)
 - [RadioManagerClient::Object::Broadcast](docs/Broadcast.md)
 - [RadioManagerClient::Object::BroadcastEPGDay](docs/BroadcastEPGDay.md)
 - [RadioManagerClient::Object::BroadcastEPGRelations](docs/BroadcastEPGRelations.md)
 - [RadioManagerClient::Object::BroadcastInputOnly](docs/BroadcastInputOnly.md)
 - [RadioManagerClient::Object::BroadcastOutputOnly](docs/BroadcastOutputOnly.md)
 - [RadioManagerClient::Object::BroadcastRelations](docs/BroadcastRelations.md)
 - [RadioManagerClient::Object::BroadcastRelationsBlocks](docs/BroadcastRelationsBlocks.md)
 - [RadioManagerClient::Object::BroadcastRelationsGenre](docs/BroadcastRelationsGenre.md)
 - [RadioManagerClient::Object::BroadcastRelationsItems](docs/BroadcastRelationsItems.md)
 - [RadioManagerClient::Object::BroadcastRelationsItemsParams](docs/BroadcastRelationsItemsParams.md)
 - [RadioManagerClient::Object::BroadcastRelationsModelType](docs/BroadcastRelationsModelType.md)
 - [RadioManagerClient::Object::BroadcastRelationsPresenters](docs/BroadcastRelationsPresenters.md)
 - [RadioManagerClient::Object::BroadcastRelationsTags](docs/BroadcastRelationsTags.md)
 - [RadioManagerClient::Object::BroadcastResults](docs/BroadcastResults.md)
 - [RadioManagerClient::Object::Campaign](docs/Campaign.md)
 - [RadioManagerClient::Object::CampaignOutputOnly](docs/CampaignOutputOnly.md)
 - [RadioManagerClient::Object::CampaignRelations](docs/CampaignRelations.md)
 - [RadioManagerClient::Object::CampaignRelationsItems](docs/CampaignRelationsItems.md)
 - [RadioManagerClient::Object::CampaignRelationsItemsParams](docs/CampaignRelationsItemsParams.md)
 - [RadioManagerClient::Object::CampaignResults](docs/CampaignResults.md)
 - [RadioManagerClient::Object::CampaignTemplateItem](docs/CampaignTemplateItem.md)
 - [RadioManagerClient::Object::Contact](docs/Contact.md)
 - [RadioManagerClient::Object::ContactOutputOnly](docs/ContactOutputOnly.md)
 - [RadioManagerClient::Object::ContactRelations](docs/ContactRelations.md)
 - [RadioManagerClient::Object::ContactRelationsItems](docs/ContactRelationsItems.md)
 - [RadioManagerClient::Object::ContactRelationsTags](docs/ContactRelationsTags.md)
 - [RadioManagerClient::Object::ContactRelationsTagsParams](docs/ContactRelationsTagsParams.md)
 - [RadioManagerClient::Object::ContactResults](docs/ContactResults.md)
 - [RadioManagerClient::Object::Data](docs/Data.md)
 - [RadioManagerClient::Object::Data1](docs/Data1.md)
 - [RadioManagerClient::Object::Data2](docs/Data2.md)
 - [RadioManagerClient::Object::Data3](docs/Data3.md)
 - [RadioManagerClient::Object::EPGResults](docs/EPGResults.md)
 - [RadioManagerClient::Object::Forbidden](docs/Forbidden.md)
 - [RadioManagerClient::Object::Genre](docs/Genre.md)
 - [RadioManagerClient::Object::GenreOutputOnly](docs/GenreOutputOnly.md)
 - [RadioManagerClient::Object::GenreRelations](docs/GenreRelations.md)
 - [RadioManagerClient::Object::GenreRelationsBroadcasts](docs/GenreRelationsBroadcasts.md)
 - [RadioManagerClient::Object::GenreRelationsBroadcastsParams](docs/GenreRelationsBroadcastsParams.md)
 - [RadioManagerClient::Object::GenreRelationsPrograms](docs/GenreRelationsPrograms.md)
 - [RadioManagerClient::Object::GenreResults](docs/GenreResults.md)
 - [RadioManagerClient::Object::ImportItem](docs/ImportItem.md)
 - [RadioManagerClient::Object::InlineResponse202](docs/InlineResponse202.md)
 - [RadioManagerClient::Object::InternalServerError](docs/InternalServerError.md)
 - [RadioManagerClient::Object::InviteUserData](docs/InviteUserData.md)
 - [RadioManagerClient::Object::InviteUserSuccess](docs/InviteUserSuccess.md)
 - [RadioManagerClient::Object::Item](docs/Item.md)
 - [RadioManagerClient::Object::ItemInputOnly](docs/ItemInputOnly.md)
 - [RadioManagerClient::Object::ItemOutputOnly](docs/ItemOutputOnly.md)
 - [RadioManagerClient::Object::ItemRelations](docs/ItemRelations.md)
 - [RadioManagerClient::Object::ItemRelationsBlock](docs/ItemRelationsBlock.md)
 - [RadioManagerClient::Object::ItemRelationsCampaign](docs/ItemRelationsCampaign.md)
 - [RadioManagerClient::Object::ItemRelationsContacts](docs/ItemRelationsContacts.md)
 - [RadioManagerClient::Object::ItemRelationsContactsParams](docs/ItemRelationsContactsParams.md)
 - [RadioManagerClient::Object::ItemRelationsProgram](docs/ItemRelationsProgram.md)
 - [RadioManagerClient::Object::ItemRelationsTags](docs/ItemRelationsTags.md)
 - [RadioManagerClient::Object::ItemResults](docs/ItemResults.md)
 - [RadioManagerClient::Object::ModelType](docs/ModelType.md)
 - [RadioManagerClient::Object::ModelTypeOptions](docs/ModelTypeOptions.md)
 - [RadioManagerClient::Object::ModelTypeOutputOnly](docs/ModelTypeOutputOnly.md)
 - [RadioManagerClient::Object::ModelTypeRelations](docs/ModelTypeRelations.md)
 - [RadioManagerClient::Object::ModelTypeRelationsBroadcasts](docs/ModelTypeRelationsBroadcasts.md)
 - [RadioManagerClient::Object::ModelTypeRelationsCampaigns](docs/ModelTypeRelationsCampaigns.md)
 - [RadioManagerClient::Object::ModelTypeRelationsCampaignsParams](docs/ModelTypeRelationsCampaignsParams.md)
 - [RadioManagerClient::Object::ModelTypeRelationsContacts](docs/ModelTypeRelationsContacts.md)
 - [RadioManagerClient::Object::ModelTypeRelationsItems](docs/ModelTypeRelationsItems.md)
 - [RadioManagerClient::Object::ModelTypeRelationsPresenters](docs/ModelTypeRelationsPresenters.md)
 - [RadioManagerClient::Object::ModelTypeRelationsPrograms](docs/ModelTypeRelationsPrograms.md)
 - [RadioManagerClient::Object::ModelTypeResults](docs/ModelTypeResults.md)
 - [RadioManagerClient::Object::NotFound](docs/NotFound.md)
 - [RadioManagerClient::Object::PostSuccess](docs/PostSuccess.md)
 - [RadioManagerClient::Object::Presenter](docs/Presenter.md)
 - [RadioManagerClient::Object::PresenterOutputOnly](docs/PresenterOutputOnly.md)
 - [RadioManagerClient::Object::PresenterRelations](docs/PresenterRelations.md)
 - [RadioManagerClient::Object::PresenterRelationsBroadcasts](docs/PresenterRelationsBroadcasts.md)
 - [RadioManagerClient::Object::PresenterRelationsPrograms](docs/PresenterRelationsPrograms.md)
 - [RadioManagerClient::Object::PresenterRelationsProgramsParams](docs/PresenterRelationsProgramsParams.md)
 - [RadioManagerClient::Object::PresenterResults](docs/PresenterResults.md)
 - [RadioManagerClient::Object::Program](docs/Program.md)
 - [RadioManagerClient::Object::ProgramInputOnly](docs/ProgramInputOnly.md)
 - [RadioManagerClient::Object::ProgramOutputOnly](docs/ProgramOutputOnly.md)
 - [RadioManagerClient::Object::ProgramRelations](docs/ProgramRelations.md)
 - [RadioManagerClient::Object::ProgramRelationsBlocks](docs/ProgramRelationsBlocks.md)
 - [RadioManagerClient::Object::ProgramRelationsBroadcasts](docs/ProgramRelationsBroadcasts.md)
 - [RadioManagerClient::Object::ProgramRelationsItems](docs/ProgramRelationsItems.md)
 - [RadioManagerClient::Object::ProgramRelationsItemsParams](docs/ProgramRelationsItemsParams.md)
 - [RadioManagerClient::Object::ProgramRelationsPresenters](docs/ProgramRelationsPresenters.md)
 - [RadioManagerClient::Object::ProgramRelationsTags](docs/ProgramRelationsTags.md)
 - [RadioManagerClient::Object::ProgramResults](docs/ProgramResults.md)
 - [RadioManagerClient::Object::ReadOnly](docs/ReadOnly.md)
 - [RadioManagerClient::Object::RelationsPlaceholder](docs/RelationsPlaceholder.md)
 - [RadioManagerClient::Object::StationResult](docs/StationResult.md)
 - [RadioManagerClient::Object::StationResultStation](docs/StationResultStation.md)
 - [RadioManagerClient::Object::StationResultStationStartDays](docs/StationResultStationStartDays.md)
 - [RadioManagerClient::Object::Story](docs/Story.md)
 - [RadioManagerClient::Object::StoryInputOnly](docs/StoryInputOnly.md)
 - [RadioManagerClient::Object::StoryOutputOnly](docs/StoryOutputOnly.md)
 - [RadioManagerClient::Object::StoryRelations](docs/StoryRelations.md)
 - [RadioManagerClient::Object::StoryRelationsItems](docs/StoryRelationsItems.md)
 - [RadioManagerClient::Object::StoryRelationsTags](docs/StoryRelationsTags.md)
 - [RadioManagerClient::Object::StoryRelationsTagsParams](docs/StoryRelationsTagsParams.md)
 - [RadioManagerClient::Object::StoryResults](docs/StoryResults.md)
 - [RadioManagerClient::Object::Success](docs/Success.md)
 - [RadioManagerClient::Object::Tag](docs/Tag.md)
 - [RadioManagerClient::Object::TagOutputOnly](docs/TagOutputOnly.md)
 - [RadioManagerClient::Object::TagRelations](docs/TagRelations.md)
 - [RadioManagerClient::Object::TagRelationsBroadcasts](docs/TagRelationsBroadcasts.md)
 - [RadioManagerClient::Object::TagRelationsBroadcastsParams](docs/TagRelationsBroadcastsParams.md)
 - [RadioManagerClient::Object::TagRelationsContacts](docs/TagRelationsContacts.md)
 - [RadioManagerClient::Object::TagRelationsItems](docs/TagRelationsItems.md)
 - [RadioManagerClient::Object::TagRelationsPrograms](docs/TagRelationsPrograms.md)
 - [RadioManagerClient::Object::TagResults](docs/TagResults.md)
 - [RadioManagerClient::Object::TextString](docs/TextString.md)
 - [RadioManagerClient::Object::TooManyRequests](docs/TooManyRequests.md)
 - [RadioManagerClient::Object::UnprocessableEntity](docs/UnprocessableEntity.md)
 - [RadioManagerClient::Object::UserResult](docs/UserResult.md)
 - [RadioManagerClient::Object::UserResultRoles](docs/UserResultRoles.md)
 - [RadioManagerClient::Object::UserResultSettings](docs/UserResultSettings.md)
 - [RadioManagerClient::Object::UserResults](docs/UserResults.md)
 - [RadioManagerClient::Object::VisualResult](docs/VisualResult.md)
 - [RadioManagerClient::Object::BlockResult](docs/BlockResult.md)
 - [RadioManagerClient::Object::BroadcastDataInput](docs/BroadcastDataInput.md)
 - [RadioManagerClient::Object::BroadcastEPGResult](docs/BroadcastEPGResult.md)
 - [RadioManagerClient::Object::BroadcastResult](docs/BroadcastResult.md)
 - [RadioManagerClient::Object::CampaignDataInput](docs/CampaignDataInput.md)
 - [RadioManagerClient::Object::CampaignResult](docs/CampaignResult.md)
 - [RadioManagerClient::Object::ContactDataInput](docs/ContactDataInput.md)
 - [RadioManagerClient::Object::ContactResult](docs/ContactResult.md)
 - [RadioManagerClient::Object::GenreResult](docs/GenreResult.md)
 - [RadioManagerClient::Object::ItemDataInput](docs/ItemDataInput.md)
 - [RadioManagerClient::Object::ItemResult](docs/ItemResult.md)
 - [RadioManagerClient::Object::ModelTypeResult](docs/ModelTypeResult.md)
 - [RadioManagerClient::Object::PresenterDataInput](docs/PresenterDataInput.md)
 - [RadioManagerClient::Object::PresenterEPGResult](docs/PresenterEPGResult.md)
 - [RadioManagerClient::Object::PresenterResult](docs/PresenterResult.md)
 - [RadioManagerClient::Object::ProgramDataInput](docs/ProgramDataInput.md)
 - [RadioManagerClient::Object::ProgramResult](docs/ProgramResult.md)
 - [RadioManagerClient::Object::StoryDataInput](docs/StoryDataInput.md)
 - [RadioManagerClient::Object::StoryResult](docs/StoryResult.md)
 - [RadioManagerClient::Object::TagDataInput](docs/TagDataInput.md)
 - [RadioManagerClient::Object::TagResult](docs/TagResult.md)


# DOCUMENTATION FOR AUTHORIZATION

## API Key

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: HTTP header

