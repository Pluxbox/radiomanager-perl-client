# RadioManagerClient::ItemApi

## Load the API package
```perl
use RadioManagerClient::Object::ItemApi;
```

All URIs are relative to *https://radiomanager.pb/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_item**](ItemApi.md#create_item) | **POST** /items | Create an new item.
[**current_item_post_structure**](ItemApi.md#current_item_post_structure) | **POST** /items/current/structure | Post a current playing item, keep structure
[**current_item_post_timing**](ItemApi.md#current_item_post_timing) | **POST** /items/current/timing | Post a current playing item
[**delete_item_by_id**](ItemApi.md#delete_item_by_id) | **DELETE** /items/{id} | Delete item by ID.
[**get_item_by_id**](ItemApi.md#get_item_by_id) | **GET** /items/{id} | Get extended item details by ID.
[**list_items**](ItemApi.md#list_items) | **GET** /items | Get a list of all the items currently in your station.
[**playlist_post_structure**](ItemApi.md#playlist_post_structure) | **POST** /items/playlist/structure | Post a playlist, keep current structure
[**playlist_post_timing**](ItemApi.md#playlist_post_timing) | **POST** /items/playlist/timing | Post a playlist
[**update_item_by_id**](ItemApi.md#update_item_by_id) | **PATCH** /items/{id} | Update extended item details by ID.


# **create_item**
> PostSuccess create_item(data => $data)

Create an new item.

Create item.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $data = RadioManagerClient::Object::ItemDataInput->new(); # ItemDataInput | Data *(Optional)*

eval { 
    my $result = $api_instance->create_item(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->create_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ItemDataInput**](ItemDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**PostSuccess**](PostSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **current_item_post_structure**
> Success current_item_post_structure(data => $data)

Post a current playing item, keep structure

Post a current playing item, keep structure

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $data = RadioManagerClient::Object::ImportItem->new(); # ImportItem | Data *(Optional)*

eval { 
    my $result = $api_instance->current_item_post_structure(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->current_item_post_structure: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ImportItem**](ImportItem.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **current_item_post_timing**
> Success current_item_post_timing(data => $data)

Post a current playing item

Post a current playing item

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $data = RadioManagerClient::Object::ImportItem->new(); # ImportItem | Data *(Optional)*

eval { 
    my $result = $api_instance->current_item_post_timing(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->current_item_post_timing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ImportItem**](ImportItem.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_item_by_id**
> Success delete_item_by_id(id => $id)

Delete item by ID.

Delete item by id.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $id = 789; # int | ID of Item **(Required)**

eval { 
    my $result = $api_instance->delete_item_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->delete_item_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Item **(Required)** | 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_by_id**
> ItemResult get_item_by_id(id => $id, _external_station_id => $_external_station_id)

Get extended item details by ID.

Read item by id.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $id = 789; # int | ID of Item **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->get_item_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->get_item_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Item **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ItemResult**](ItemResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_items**
> ItemResults list_items(page => $page, block_id => $block_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, campaign_id => $campaign_id, contact_id => $contact_id, program_draft_id => $program_draft_id, user_draft_id => $user_draft_id, station_draft_id => $station_draft_id, program_id => $program_id, start_min => $start_min, start_max => $start_max, duration_min => $duration_min, duration_max => $duration_max, status => $status, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get a list of all the items currently in your station.

Get a list of all the items currently in your station. This feature supports pagination and will give a maximum results of 50 items back.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $page = 789; # int | Current page *(Optional)*
my $block_id = 789; # int | Search on Block ID *(Optional)* `(Relation)`
my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $campaign_id = 789; # int | Search on Campaign ID *(Optional)* `(Relation)`
my $contact_id = 789; # int | Search on Contact ID *(Optional)* `(Relation)`
my $program_draft_id = 789; # int | Search on Program Draft ID *(Optional)*
my $user_draft_id = 789; # int | Search on User Draft ID *(Optional)*
my $station_draft_id = 789; # int | Search on Station Draft ID *(Optional)*
my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $start_min = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Minimum start date *(Optional)*
my $start_max = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Maximum start date *(Optional)*
my $duration_min = 56; # int | Minimum duration (seconds) *(Optional)*
my $duration_max = 56; # int | Maximum duration (seconds) *(Optional)*
my $status = 'status_example'; # string | Play Status of item *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_items(page => $page, block_id => $block_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, campaign_id => $campaign_id, contact_id => $contact_id, program_draft_id => $program_draft_id, user_draft_id => $user_draft_id, station_draft_id => $station_draft_id, program_id => $program_id, start_min => $start_min, start_max => $start_max, duration_min => $duration_min, duration_max => $duration_max, status => $status, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->list_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] 
 **block_id** | **int**| Search on Block ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **campaign_id** | **int**| Search on Campaign ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **contact_id** | **int**| Search on Contact ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **program_draft_id** | **int**| Search on Program Draft ID *(Optional)* | [optional] 
 **user_draft_id** | **int**| Search on User Draft ID *(Optional)* | [optional] 
 **station_draft_id** | **int**| Search on Station Draft ID *(Optional)* | [optional] 
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **start_min** | **DateTime**| Minimum start date *(Optional)* | [optional] 
 **start_max** | **DateTime**| Maximum start date *(Optional)* | [optional] 
 **duration_min** | **int**| Minimum duration (seconds) *(Optional)* | [optional] 
 **duration_max** | **int**| Maximum duration (seconds) *(Optional)* | [optional] 
 **status** | **string**| Play Status of item *(Optional)* | [optional] 
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ItemResults**](ItemResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlist_post_structure**
> InlineResponse202 playlist_post_structure(data => $data)

Post a playlist, keep current structure

Post a playlist, keep current structure

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $data = RadioManagerClient::Object::Data1->new(); # Data1 | Data *(Optional)*

eval { 
    my $result = $api_instance->playlist_post_structure(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->playlist_post_structure: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Data1**](Data1.md)| Data *(Optional)* | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlist_post_timing**
> InlineResponse202 playlist_post_timing(data => $data)

Post a playlist

Post a playlist

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $data = RadioManagerClient::Object::Data->new(); # Data | Data *(Optional)*

eval { 
    my $result = $api_instance->playlist_post_timing(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->playlist_post_timing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Data**](Data.md)| Data *(Optional)* | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_by_id**
> Success update_item_by_id(id => $id, data => $data)

Update extended item details by ID.

Update item by id.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ItemApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ItemApi->new();
my $id = 789; # int | ID of Item **(Required)**
my $data = RadioManagerClient::Object::Item->new(); # Item | Data *(Optional)*

eval { 
    my $result = $api_instance->update_item_by_id(id => $id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->update_item_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Item **(Required)** | 
 **data** | [**Item**](Item.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

