# RadioManagerClient::ModelTypeApi

## Load the API package
```perl
use RadioManagerClient::Object::ModelTypeApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_model_type_by_id**](ModelTypeApi.md#get_model_type_by_id) | **GET** /model_types/{id} | Get modelType by id
[**list_model_types**](ModelTypeApi.md#list_model_types) | **GET** /model_types | Get all modelTypes.


# **get_model_type_by_id**
> ModelTypeResult get_model_type_by_id(id => $id, _external_station_id => $_external_station_id)

Get modelType by id

Get modelType by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::ModelTypeApi;
my $api_instance = RadioManagerClient::ModelTypeApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of ModelType **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->get_model_type_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModelTypeApi->get_model_type_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of ModelType **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ModelTypeResult**](ModelTypeResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_model_types**
> ModelTypeResults list_model_types(page => $page, program_id => $program_id, broadcast_id => $broadcast_id, item_id => $item_id, campaign_id => $campaign_id, presenter_id => $presenter_id, contact_id => $contact_id, model => $model, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all modelTypes.

List all modelTypes.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::ModelTypeApi;
my $api_instance = RadioManagerClient::ModelTypeApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $page = 789; # int | Current page *(Optional)*
my $program_id = 789; # int | Search on Program ID *(Optional)*
my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)*
my $item_id = 789; # int | Search on Item ID *(Optional)*
my $campaign_id = 789; # int | Search on Campaign ID *(Optional)*
my $presenter_id = 789; # int | Search on Presenter ID *(Optional)*
my $contact_id = 789; # int | Search on Contact ID *(Optional)*
my $model = 'model_example'; # string | Search Modeltypes for certain Model *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_model_types(page => $page, program_id => $program_id, broadcast_id => $broadcast_id, item_id => $item_id, campaign_id => $campaign_id, presenter_id => $presenter_id, contact_id => $contact_id, model => $model, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModelTypeApi->list_model_types: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] 
 **program_id** | **int**| Search on Program ID *(Optional)* | [optional] 
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* | [optional] 
 **campaign_id** | **int**| Search on Campaign ID *(Optional)* | [optional] 
 **presenter_id** | **int**| Search on Presenter ID *(Optional)* | [optional] 
 **contact_id** | **int**| Search on Contact ID *(Optional)* | [optional] 
 **model** | **string**| Search Modeltypes for certain Model *(Optional)* | [optional] 
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ModelTypeResults**](ModelTypeResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

