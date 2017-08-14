# RadioManagerClient::BlockApi

## Load the API package
```perl
use RadioManagerClient::Object::BlockApi;
```

All URIs are relative to *http://radiomanager.pb/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_block_by_id**](BlockApi.md#get_block_by_id) | **GET** /blocks/{id} | Get block by id
[**get_current_block**](BlockApi.md#get_current_block) | **GET** /blocks/current | Get current Block
[**get_next_block**](BlockApi.md#get_next_block) | **GET** /blocks/next | Get next Block
[**list_blocks**](BlockApi.md#list_blocks) | **GET** /blocks | Get a list of all blocks currently in your station.


# **get_block_by_id**
> BlockResult get_block_by_id(id => $id, _external_station_id => $_external_station_id)

Get block by id

Get block by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BlockApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BlockApi->new();
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Block **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**BlockResult**](BlockResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_current_block**
> BlockResult get_current_block()

Get current Block

Get current Block

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BlockApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BlockApi->new();

eval { 
    my $result = $api_instance->get_current_block();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlockApi->get_current_block: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BlockResult**](BlockResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_next_block**
> BlockResult get_next_block()

Get next Block

Get next Block

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BlockApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BlockApi->new();

eval { 
    my $result = $api_instance->get_next_block();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlockApi->get_next_block: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BlockResult**](BlockResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_blocks**
> BlockResults list_blocks(page => $page, start_min => $start_min, start_max => $start_max, broadcast_id => $broadcast_id, program_id => $program_id, item_id => $item_id, _external_station_id => $_external_station_id)

Get a list of all blocks currently in your station.

Get a list of all blocks currently in your station. This feature supports pagination and will give a maximum of 50 blocks back.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::BlockApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::BlockApi->new();
my $page = 789; # int | Current page *(Optional)*
my $start_min = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Minimum start date *(Optional)*
my $start_max = DateTime->from_epoch(epoch => str2time('2013-10-20T19:20:30+01:00')); # DateTime | Maximum start date *(Optional)*
my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_blocks(page => $page, start_min => $start_min, start_max => $start_max, broadcast_id => $broadcast_id, program_id => $program_id, item_id => $item_id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BlockApi->list_blocks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **start_min** | **DateTime**| Minimum start date *(Optional)* | [optional] 
 **start_max** | **DateTime**| Maximum start date *(Optional)* | [optional] 
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**BlockResults**](BlockResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

