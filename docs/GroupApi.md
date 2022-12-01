# RadioManagerClient::GroupApi

## Load the API package
```perl
use RadioManagerClient::Object::GroupApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_group_by_id**](GroupApi.md#get_group_by_id) | **GET** /groups/{id} | Get group by id
[**list_groups**](GroupApi.md#list_groups) | **GET** /groups | Get all groups.


# **get_group_by_id**
> GroupResult get_group_by_id(id => $id, _external_station_id => $_external_station_id)

Get group by id

Get group by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::GroupApi;
my $api_instance = RadioManagerClient::GroupApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | id of Group
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->get_group_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupApi->get_group_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of Group | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**GroupResult**](GroupResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_groups**
> InlineResponse2007 list_groups(broadcast_id => $broadcast_id, program_id => $program_id, user_id => $user_id, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all groups.

List all groups.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::GroupApi;
my $api_instance = RadioManagerClient::GroupApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $user_id = 789; # int | Search on User ID *(Optional)* `(Relation)`
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->list_groups(broadcast_id => $broadcast_id, program_id => $program_id, user_id => $user_id, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GroupApi->list_groups: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **user_id** | **int**| Search on User ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

