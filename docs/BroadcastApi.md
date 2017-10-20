# RadioManagerClient::BroadcastApi

## Load the API package
```perl
use RadioManagerClient::Object::BroadcastApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_broadcast**](BroadcastApi.md#create_broadcast) | **POST** /broadcasts | Create broadcast.
[**delete_broadcast_by_id**](BroadcastApi.md#delete_broadcast_by_id) | **DELETE** /broadcasts/{id} | Delete broadcast by id
[**get_broadcast_by_id**](BroadcastApi.md#get_broadcast_by_id) | **GET** /broadcasts/{id} | Get broadcast by id
[**get_current_broadcast**](BroadcastApi.md#get_current_broadcast) | **GET** /broadcasts/current | Get current Broadcast
[**get_daily_epg**](BroadcastApi.md#get_daily_epg) | **GET** /broadcasts/epg/daily | Get daily EPG
[**get_epg_by_date**](BroadcastApi.md#get_epg_by_date) | **GET** /broadcasts/epg | Get EPG by date
[**get_next_broadcast**](BroadcastApi.md#get_next_broadcast) | **GET** /broadcasts/next | Get next Broadcast
[**get_weekly_epg**](BroadcastApi.md#get_weekly_epg) | **GET** /broadcasts/epg/weekly | Get weekly EPG
[**list_broadcasts**](BroadcastApi.md#list_broadcasts) | **GET** /broadcasts | Get all broadcasts.
[**print_broadcast_by_id**](BroadcastApi.md#print_broadcast_by_id) | **GET** /broadcasts/print/{id} | Print Broadcast by id
[**update_broadcast_by_id**](BroadcastApi.md#update_broadcast_by_id) | **PATCH** /broadcasts/{id} | Update broadcast by id


# **create_broadcast**
> PostSuccess create_broadcast(data => $data)

Create broadcast.

Create broadcast.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $data = RadioManagerClient::Object::BroadcastDataInput->new(); # BroadcastDataInput | Data **(Required)**

eval { 
    my $result = $api_instance->create_broadcast(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->create_broadcast: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**BroadcastDataInput**](BroadcastDataInput.md)| Data **(Required)** | 

### Return type

[**PostSuccess**](PostSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_broadcast_by_id**
> Success delete_broadcast_by_id(id => $id)

Delete broadcast by id

Delete broadcast by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
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

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_broadcast_by_id**
> BroadcastResult get_broadcast_by_id(id => $id, _external_station_id => $_external_station_id)

Get broadcast by id

Get broadcast by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
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

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_current_broadcast**
> Broadcast get_current_broadcast()

Get current Broadcast

Get current Broadcast

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();

eval { 
    my $result = $api_instance->get_current_broadcast();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_current_broadcast: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Broadcast**](Broadcast.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_daily_epg**
> EPGResults get_daily_epg(date => $date, withunpublished => $withunpublished)

Get daily EPG

Get current Broadcast

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $date = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Date *(Optional)*
my $withunpublished = 1; # boolean | Show Unpublished *(Optional)*

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
 **date** | **DateTime**| Date *(Optional)* | [optional] 
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_epg_by_date**
> EPGResults get_epg_by_date(date => $date, withunpublished => $withunpublished)

Get EPG by date

Get EPG by date

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $date = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Date *(Optional)*
my $withunpublished = 1; # boolean | Show Unpublished *(Optional)*

eval { 
    my $result = $api_instance->get_epg_by_date(date => $date, withunpublished => $withunpublished);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_epg_by_date: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| Date *(Optional)* | [optional] 
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_next_broadcast**
> Broadcast get_next_broadcast()

Get next Broadcast

Get next Broadcast

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();

eval { 
    my $result = $api_instance->get_next_broadcast();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->get_next_broadcast: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Broadcast**](Broadcast.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_weekly_epg**
> EPGResults get_weekly_epg(date => $date, withunpublished => $withunpublished)

Get weekly EPG

Get weekly EPG

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $date = 'date_example'; # string | Date *(Optional)*
my $withunpublished = 1; # boolean | Show Unpublished *(Optional)*

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
 **date** | **string**| Date *(Optional)* | [optional] 
 **withunpublished** | **boolean**| Show Unpublished *(Optional)* | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_broadcasts**
> BroadcastResults list_broadcasts(page => $page, program_id => $program_id, block_id => $block_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, item_id => $item_id, start_min => $start_min, start_max => $start_max, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all broadcasts.

List all broadcasts.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $page = 789; # int | Current page *(Optional)*
my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $block_id = 789; # int | Search on Block ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $presenter_id = 789; # int | Search on Presenter ID *(Optional)* `(Relation)`
my $genre_id = 789; # int | Search on Genre ID *(Optional)* `(Relation)`
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $start_min = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Minimum start date *(Optional)*
my $start_max = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Maximum start date *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_broadcasts(page => $page, program_id => $program_id, block_id => $block_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, item_id => $item_id, start_min => $start_min, start_max => $start_max, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BroadcastApi->list_broadcasts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **block_id** | **int**| Search on Block ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **presenter_id** | **int**| Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **genre_id** | **int**| Search on Genre ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **start_min** | **DateTime**| Minimum start date *(Optional)* | [optional] 
 **start_max** | **DateTime**| Maximum start date *(Optional)* | [optional] 
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**BroadcastResults**](BroadcastResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **print_broadcast_by_id**
> EPGResults print_broadcast_by_id(id => $id, program_id => $program_id, presenter_id => $presenter_id, tag_id => $tag_id)

Print Broadcast by id

Print Broadcast by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $id = 789; # int | ID of Broadcast **(Required)**
my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $presenter_id = 789; # int | Search on Presenter ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`

eval { 
    my $result = $api_instance->print_broadcast_by_id(id => $id, program_id => $program_id, presenter_id => $presenter_id, tag_id => $tag_id);
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
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **presenter_id** | **int**| Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 

### Return type

[**EPGResults**](EPGResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_broadcast_by_id**
> Success update_broadcast_by_id(id => $id, data => $data)

Update broadcast by id

Update broadcast by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BroadcastApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BroadcastApi->new();
my $id = 789; # int | ID of Broadcast **(Required)**
my $data = RadioManagerClient::Object::BroadcastDataInput->new(); # BroadcastDataInput | Data *(Optional)*

eval { 
    my $result = $api_instance->update_broadcast_by_id(id => $id, data => $data);
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
 **data** | [**BroadcastDataInput**](BroadcastDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

