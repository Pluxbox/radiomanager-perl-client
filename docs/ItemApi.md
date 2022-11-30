# RadioManagerClient::ItemApi

## Load the API package
```perl
use RadioManagerClient::Object::ItemApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_item**](ItemApi.md#create_item) | **POST** /items | Create an new item.
[**current_item_post_structure**](ItemApi.md#current_item_post_structure) | **POST** /items/current/structure | Post a current playing item, keep structure
[**current_item_post_timing**](ItemApi.md#current_item_post_timing) | **POST** /items/current/timing | Post current playing Item
[**delete_item_by_id**](ItemApi.md#delete_item_by_id) | **DELETE** /items/{id} | Delete item by ID.
[**get_current_item**](ItemApi.md#get_current_item) | **GET** /items/current | Get current Item
[**get_item_by_id**](ItemApi.md#get_item_by_id) | **GET** /items/{id} | Get extended item details by ID.
[**list_items**](ItemApi.md#list_items) | **GET** /items | Get a list of all the items currently in your station.
[**playlist_post_merge**](ItemApi.md#playlist_post_merge) | **POST** /items/playlist/merge | Post a playlist, do not remove previously imported items
[**playlist_post_structure**](ItemApi.md#playlist_post_structure) | **POST** /items/playlist/structure | Post a playlist, keep current structure
[**playlist_post_timing**](ItemApi.md#playlist_post_timing) | **POST** /items/playlist/timing | Post a playlist
[**stop_current_item**](ItemApi.md#stop_current_item) | **POST** /items/stopcurrent | Stop an Item
[**update_item_by_id**](ItemApi.md#update_item_by_id) | **PATCH** /items/{id} | Update extended item details by ID.


# **create_item**
> InlineResponse2002 create_item(item_data_input => $item_data_input)

Create an new item.

Create item.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $item_data_input = RadioManagerClient::Object::ItemDataInput->new(); # ItemDataInput | Data **(Required)**

eval {
    my $result = $api_instance->create_item(item_data_input => $item_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->create_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_data_input** | [**ItemDataInput**](ItemDataInput.md)| Data **(Required)** | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **current_item_post_structure**
> ItemResult current_item_post_structure(import_item => $import_item)

Post a current playing item, keep structure

Post current playing Item. Can be existing Item referenced by external_id. When Items are moved, this function **will attempt to** keep Items' ModelType structure in rundown.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $import_item = RadioManagerClient::Object::ImportItem->new(); # ImportItem | Data **(Required)**

eval {
    my $result = $api_instance->current_item_post_structure(import_item => $import_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->current_item_post_structure: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_item** | [**ImportItem**](ImportItem.md)| Data **(Required)** | 

### Return type

[**ItemResult**](ItemResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **current_item_post_timing**
> ItemResult current_item_post_timing(import_item => $import_item)

Post current playing Item

Post current playing Item. Can be existing Item referenced by external_id. When Items are moved, this function **will not keep** Items' ModelType structure in rundown.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $import_item = RadioManagerClient::Object::ImportItem->new(); # ImportItem | Data **(Required)**

eval {
    my $result = $api_instance->current_item_post_timing(import_item => $import_item);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->current_item_post_timing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_item** | [**ImportItem**](ImportItem.md)| Data **(Required)** | 

### Return type

[**ItemResult**](ItemResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_item_by_id**
> delete_item_by_id(id => $id)

Delete item by ID.

Delete item by id.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Item **(Required)**

eval {
    $api_instance->delete_item_by_id(id => $id);
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

void (empty response body)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_current_item**
> ItemResult get_current_item(lastplayed => $lastplayed)

Get current Item

Get current Item

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $lastplayed = null; # boolean | Show last played item if there is no current item*(Optional)*

eval {
    my $result = $api_instance->get_current_item(lastplayed => $lastplayed);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->get_current_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lastplayed** | **boolean**| Show last played item if there is no current item*(Optional)* | [optional] 

### Return type

[**ItemResult**](ItemResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_item_by_id**
> ItemResult get_item_by_id(id => $id, _external_station_id => $_external_station_id)

Get extended item details by ID.

Read item by id.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

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

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_items**
> InlineResponse2008 list_items(block_id => $block_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, campaign_id => $campaign_id, contact_id => $contact_id, program_draft_id => $program_draft_id, user_draft_id => $user_draft_id, station_draft_id => $station_draft_id, program_id => $program_id, external_id => $external_id, duration_min => $duration_min, duration_max => $duration_max, status => $status, start_min => $start_min, start_max => $start_max, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get a list of all the items currently in your station.

Get a list of all the items currently in your station. This feature supports pagination and will give a maximum results of 50 items back.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

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
my $external_id = "external_id_example"; # string | Search on External ID *(Optional)*
my $duration_min = 56; # int | Minimum duration (seconds) *(Optional)*
my $duration_max = 56; # int | Maximum duration (seconds) *(Optional)*
my $status = "status_example"; # string | Play Status of item *(Optional)*
my $start_min = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Minimum start date *(Optional)*
my $start_max = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Maximum start date *(Optional)*
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->list_items(block_id => $block_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, campaign_id => $campaign_id, contact_id => $contact_id, program_draft_id => $program_draft_id, user_draft_id => $user_draft_id, station_draft_id => $station_draft_id, program_id => $program_id, external_id => $external_id, duration_min => $duration_min, duration_max => $duration_max, status => $status, start_min => $start_min, start_max => $start_max, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->list_items: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
 **external_id** | **string**| Search on External ID *(Optional)* | [optional] 
 **duration_min** | **int**| Minimum duration (seconds) *(Optional)* | [optional] 
 **duration_max** | **int**| Maximum duration (seconds) *(Optional)* | [optional] 
 **status** | **string**| Play Status of item *(Optional)* | [optional] 
 **start_min** | **DATE_TIME**| Minimum start date *(Optional)* | [optional] 
 **start_max** | **DATE_TIME**| Maximum start date *(Optional)* | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlist_post_merge**
> InlineResponse2021 playlist_post_merge(playlist_merge_body => $playlist_merge_body)

Post a playlist, do not remove previously imported items

Post a playlist with 'keep structure' method, but do not remove previously imported items

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $playlist_merge_body = RadioManagerClient::Object::PlaylistMergeBody->new(); # PlaylistMergeBody | Data *(Required)*

eval {
    my $result = $api_instance->playlist_post_merge(playlist_merge_body => $playlist_merge_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->playlist_post_merge: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playlist_merge_body** | [**PlaylistMergeBody**](PlaylistMergeBody.md)| Data *(Required)* | 

### Return type

[**InlineResponse2021**](InlineResponse2021.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlist_post_structure**
> InlineResponse2021 playlist_post_structure(playlist_structure_body => $playlist_structure_body)

Post a playlist, keep current structure

Post a playlist for a block. Existing Items can referenced by external_id. When Items are moved, this function **will attempt to** keep Items' ModelType structure in rundown.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $playlist_structure_body = RadioManagerClient::Object::PlaylistStructureBody->new(); # PlaylistStructureBody | Data *(Required)*

eval {
    my $result = $api_instance->playlist_post_structure(playlist_structure_body => $playlist_structure_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->playlist_post_structure: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playlist_structure_body** | [**PlaylistStructureBody**](PlaylistStructureBody.md)| Data *(Required)* | 

### Return type

[**InlineResponse2021**](InlineResponse2021.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playlist_post_timing**
> InlineResponse2021 playlist_post_timing(playlist_timing_body => $playlist_timing_body)

Post a playlist

Post a playlist for a block. Existing Items can referenced by external_id. When Items are moved, this function **will not** keep Items' ModelType structure in rundown.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $playlist_timing_body = RadioManagerClient::Object::PlaylistTimingBody->new(); # PlaylistTimingBody | Data *(Required)*

eval {
    my $result = $api_instance->playlist_post_timing(playlist_timing_body => $playlist_timing_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->playlist_post_timing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playlist_timing_body** | [**PlaylistTimingBody**](PlaylistTimingBody.md)| Data *(Required)* | 

### Return type

[**InlineResponse2021**](InlineResponse2021.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_current_item**
> InlineResponse202 stop_current_item(items_stopcurrent_body => $items_stopcurrent_body)

Stop an Item

Set a current playing or specific item on played

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $items_stopcurrent_body = RadioManagerClient::Object::ItemsStopcurrentBody->new(); # ItemsStopcurrentBody | Data *(Optional)*

eval {
    my $result = $api_instance->stop_current_item(items_stopcurrent_body => $items_stopcurrent_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ItemApi->stop_current_item: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **items_stopcurrent_body** | [**ItemsStopcurrentBody**](ItemsStopcurrentBody.md)| Data *(Optional)* | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_by_id**
> InlineResponse202 update_item_by_id(id => $id, item_data_input => $item_data_input)

Update extended item details by ID.

Update item by id.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ItemApi;
my $api_instance = RadioManagerClient::ItemApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Item **(Required)**
my $item_data_input = RadioManagerClient::Object::ItemDataInput->new(); # ItemDataInput | Data *(Optional)*

eval {
    my $result = $api_instance->update_item_by_id(id => $id, item_data_input => $item_data_input);
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
 **item_data_input** | [**ItemDataInput**](ItemDataInput.md)| Data *(Optional)* | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

