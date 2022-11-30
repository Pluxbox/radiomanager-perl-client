# RadioManagerClient::BroadcastApi

## Load the API package
```perl
use RadioManagerClient::Object::BroadcastApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_broadcast**](BroadcastApi.md#create_broadcast) | **POST** /broadcasts | Create broadcast.
[**delete_broadcast_by_id**](BroadcastApi.md#delete_broadcast_by_id) | **DELETE** /broadcasts/{id} | Delete broadcast by id
[**get_broadcast_by_id**](BroadcastApi.md#get_broadcast_by_id) | **GET** /broadcasts/{id} | Get broadcast by id
[**get_current_broadcast**](BroadcastApi.md#get_current_broadcast) | **GET** /broadcasts/current | Get current Broadcast
[**get_daily_epg**](BroadcastApi.md#get_daily_epg) | **GET** /broadcasts/epg/daily | Get daily EPG
[**get_epgby_date**](BroadcastApi.md#get_epgby_date) | **GET** /broadcasts/epg | Get EPG by date
[**get_next_broadcast**](BroadcastApi.md#get_next_broadcast) | **GET** /broadcasts/next | Get next Broadcast
[**get_weekly_epg**](BroadcastApi.md#get_weekly_epg) | **GET** /broadcasts/epg/weekly | Get weekly EPG
[**list_broadcasts**](BroadcastApi.md#list_broadcasts) | **GET** /broadcasts | Get all broadcasts.
[**print_broadcast_by_id**](BroadcastApi.md#print_broadcast_by_id) | **GET** /broadcasts/print/{id} | Print broadcast by id with template
[**update_broadcast_by_id**](BroadcastApi.md#update_broadcast_by_id) | **PATCH** /broadcasts/{id} | Update broadcast by id


# **create_broadcast**
> InlineResponse2002 create_broadcast(broadcast_data_input => $broadcast_data_input)

Create broadcast.

Create broadcast.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $broadcast_data_input = RadioManagerClient::Object::BroadcastDataInput->new(); # BroadcastDataInput | Data **(Required)**

eval {
    my $result = $api_instance->create_broadcast(broadcast_data_input => $broadcast_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->create_broadcast: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **broadcast_data_input** | [**BroadcastDataInput**](BroadcastDataInput.md)| Data **(Required)** | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_broadcast_by_id**
> InlineResponse202 delete_broadcast_by_id(id => $id)

Delete broadcast by id

Delete broadcast by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Broadcast **(Required)**

eval {
    my $result = $api_instance->delete_broadcast_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->delete_broadcast_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Broadcast **(Required)** | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_broadcast_by_id**
> BroadcastResult get_broadcast_by_id(id => $id, _external_station_id => $_external_station_id)

Get broadcast by id

Get broadcast by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Broadcast **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->get_broadcast_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_broadcast_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Broadcast **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**BroadcastResult**](BroadcastResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_current_broadcast**
> BroadcastResult get_current_broadcast(withunpublished => $withunpublished)

Get current Broadcast

Get currently playing Broadcast

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $withunpublished = null; # boolean | Show Unpublished *(Optional)*

eval {
    my $result = $api_instance->get_current_broadcast(withunpublished => $withunpublished);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_current_broadcast: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**BroadcastResult**](BroadcastResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_daily_epg**
> EPGResults get_daily_epg(date => $date, withunpublished => $withunpublished)

Get daily EPG

Get a list of broadcasts as Programming guide for 1 day

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Date *(Optional)*
my $withunpublished = null; # boolean | Show Unpublished *(Optional)*

eval {
    my $result = $api_instance->get_daily_epg(date => $date, withunpublished => $withunpublished);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_daily_epg: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DATE_TIME**| Date *(Optional)* | [optional] 
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_epgby_date**
> EPGResults get_epgby_date(date => $date, withunpublished => $withunpublished)

Get EPG by date

Get a list of broadcasts as Programming guide, seperated per day

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Date *(Optional)*
my $withunpublished = null; # boolean | Show Unpublished *(Optional)*

eval {
    my $result = $api_instance->get_epgby_date(date => $date, withunpublished => $withunpublished);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_epgby_date: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DATE_TIME**| Date *(Optional)* | [optional] 
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_next_broadcast**
> BroadcastResult get_next_broadcast(withunpublished => $withunpublished)

Get next Broadcast

Get currently upcoming Broadcast

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $withunpublished = null; # boolean | Show Unpublished *(Optional)*

eval {
    my $result = $api_instance->get_next_broadcast(withunpublished => $withunpublished);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_next_broadcast: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**BroadcastResult**](BroadcastResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_weekly_epg**
> EPGResults get_weekly_epg(date => $date, withunpublished => $withunpublished)

Get weekly EPG

Get a list of broadcasts as Programming guide for 7 days, seperated per day

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $date = DateTime->from_epoch(epoch => str2time('null')); # DATE | Date *(Optional)*
my $withunpublished = null; # boolean | Show Unpublished *(Optional)*

eval {
    my $result = $api_instance->get_weekly_epg(date => $date, withunpublished => $withunpublished);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_weekly_epg: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DATE**| Date *(Optional)* | [optional] 
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_broadcasts**
> InlineResponse2001 list_broadcasts(program_id => $program_id, block_id => $block_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, group_id => $group_id, item_id => $item_id, planned_in_epg => $planned_in_epg, start_min => $start_min, start_max => $start_max, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all broadcasts.

List all broadcasts.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $block_id = 789; # int | Search on Block ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $presenter_id = 789; # int | Search on Presenter ID *(Optional)* `(Relation)`
my $genre_id = 789; # int | Search on Genre ID *(Optional)* `(Relation)`
my $group_id = 789; # int | Search on Group ID *(Optional)* `(Relation)`
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $planned_in_epg = 789; # int | Checks if item is in EPG *(Optional)*
my $start_min = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Minimum start date *(Optional)*
my $start_max = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Maximum start date *(Optional)*
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->list_broadcasts(program_id => $program_id, block_id => $block_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, group_id => $group_id, item_id => $item_id, planned_in_epg => $planned_in_epg, start_min => $start_min, start_max => $start_max, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->list_broadcasts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **block_id** | **int**| Search on Block ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **presenter_id** | **int**| Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **genre_id** | **int**| Search on Genre ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **group_id** | **int**| Search on Group ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **planned_in_epg** | **int**| Checks if item is in EPG *(Optional)* | [optional] 
 **start_min** | **DATE_TIME**| Minimum start date *(Optional)* | [optional] 
 **start_max** | **DATE_TIME**| Maximum start date *(Optional)* | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **print_broadcast_by_id**
> InlineResponse2003 print_broadcast_by_id(id => $id, template_id => $template_id)

Print broadcast by id with template

Download a rundown in printable format as HTML inside the JSON repsonse

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Broadcast **(Required)**
my $template_id = 789; # int | The print template to be used *(Optional)*

eval {
    my $result = $api_instance->print_broadcast_by_id(id => $id, template_id => $template_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->print_broadcast_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Broadcast **(Required)** | 
 **template_id** | **int**| The print template to be used *(Optional)* | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_broadcast_by_id**
> InlineResponse202 update_broadcast_by_id(id => $id, broadcast_data_input => $broadcast_data_input)

Update broadcast by id

Update broadcast by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::BroadcastApi;
my $api_instance = RadioManagerClient::BroadcastApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Broadcast **(Required)**
my $broadcast_data_input = RadioManagerClient::Object::BroadcastDataInput->new(); # BroadcastDataInput | Data *(Optional)*

eval {
    my $result = $api_instance->update_broadcast_by_id(id => $id, broadcast_data_input => $broadcast_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->update_broadcast_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Broadcast **(Required)** | 
 **broadcast_data_input** | [**BroadcastDataInput**](BroadcastDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

