# RadioManagerClient::TagApi

## Load the API package
```perl
use RadioManagerClient::Object::TagApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tag**](TagApi.md#create_tag) | **POST** /tags | Create tag.
[**delete_tag_by_id**](TagApi.md#delete_tag_by_id) | **DELETE** /tags/{id} | Delete tag by id
[**get_tag_by_id**](TagApi.md#get_tag_by_id) | **GET** /tags/{id} | Get tags by id
[**list_tags**](TagApi.md#list_tags) | **GET** /tags | Get a list of all the tags currently in your station.
[**update_tag_by_id**](TagApi.md#update_tag_by_id) | **PATCH** /tags/{id} | Update tag by id


# **create_tag**
> PostSuccess create_tag(data => $data)

Create tag.

Create tag.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::TagApi;
my $api_instance = RadioManagerClient::TagApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $data = RadioManagerClient::Object::TagDataInput->new(); # TagDataInput | Data **(Required)**

eval { 
    my $result = $api_instance->create_tag(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TagApi->create_tag: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TagDataInput**](TagDataInput.md)| Data **(Required)** | 

### Return type

[**PostSuccess**](PostSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_tag_by_id**
> Success delete_tag_by_id(id => $id)

Delete tag by id

Delete tag by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::TagApi;
my $api_instance = RadioManagerClient::TagApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Tag **(Required)**

eval { 
    my $result = $api_instance->delete_tag_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TagApi->delete_tag_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Tag **(Required)** | 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tag_by_id**
> TagResult get_tag_by_id(id => $id, _external_station_id => $_external_station_id)

Get tags by id

Get tags by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::TagApi;
my $api_instance = RadioManagerClient::TagApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Tag **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->get_tag_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TagApi->get_tag_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Tag **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**TagResult**](TagResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_tags**
> TagResults list_tags(page => $page, program_id => $program_id, item_id => $item_id, broadcast_id => $broadcast_id, contact_id => $contact_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get a list of all the tags currently in your station.

Get a list of all the tags currently in your station. This feature supports pagination and will give a maximum results of 50 tags back.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::TagApi;
my $api_instance = RadioManagerClient::TagApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $page = 789; # int | Current page *(Optional)*
my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $contact_id = 789; # int | Search on Contact ID *(Optional)* `(Relation)`
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_tags(page => $page, program_id => $program_id, item_id => $item_id, broadcast_id => $broadcast_id, contact_id => $contact_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TagApi->list_tags: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] 
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **contact_id** | **int**| Search on Contact ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**TagResults**](TagResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tag_by_id**
> Success update_tag_by_id(id => $id, data => $data)

Update tag by id

Update tag by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::TagApi;
my $api_instance = RadioManagerClient::TagApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Tag **(Required)**
my $data = RadioManagerClient::Object::TagDataInput->new(); # TagDataInput | Data *(Optional)*

eval { 
    my $result = $api_instance->update_tag_by_id(id => $id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TagApi->update_tag_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Tag **(Required)** | 
 **data** | [**TagDataInput**](TagDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

