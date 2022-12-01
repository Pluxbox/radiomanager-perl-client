# RadioManagerClient::PresenterApi

## Load the API package
```perl
use RadioManagerClient::Object::PresenterApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_presenter**](PresenterApi.md#create_presenter) | **POST** /presenters | Create presenter.
[**delete_presenter_by_id**](PresenterApi.md#delete_presenter_by_id) | **DELETE** /presenters/{id} | Delete presenter by id
[**get_presenter_by_id**](PresenterApi.md#get_presenter_by_id) | **GET** /presenters/{id} | Get presenter by id
[**list_presenters**](PresenterApi.md#list_presenters) | **GET** /presenters | Get all presenters.
[**update_presenter_by_id**](PresenterApi.md#update_presenter_by_id) | **PATCH** /presenters/{id} | Update presenter by id


# **create_presenter**
> InlineResponse2002 create_presenter(presenter_data_input => $presenter_data_input)

Create presenter.

Create presenter.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::PresenterApi;
my $api_instance = RadioManagerClient::PresenterApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $presenter_data_input = RadioManagerClient::Object::PresenterDataInput->new(); # PresenterDataInput | Data **(Required)**

eval {
    my $result = $api_instance->create_presenter(presenter_data_input => $presenter_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PresenterApi->create_presenter: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **presenter_data_input** | [**PresenterDataInput**](PresenterDataInput.md)| Data **(Required)** | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_presenter_by_id**
> InlineResponse202 delete_presenter_by_id(id => $id)

Delete presenter by id

Delete presenter by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::PresenterApi;
my $api_instance = RadioManagerClient::PresenterApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | id of presenter

eval {
    my $result = $api_instance->delete_presenter_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PresenterApi->delete_presenter_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of presenter | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_presenter_by_id**
> PresenterResult get_presenter_by_id(id => $id)

Get presenter by id

Get presenter by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::PresenterApi;
my $api_instance = RadioManagerClient::PresenterApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | id of Presenter

eval {
    my $result = $api_instance->get_presenter_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PresenterApi->get_presenter_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of Presenter | 

### Return type

[**PresenterResult**](PresenterResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_presenters**
> InlineResponse20010 list_presenters(program_id => $program_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all presenters.

List all presenters.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::PresenterApi;
my $api_instance = RadioManagerClient::PresenterApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $program_id = 789; # int | Search on Program ID *(Optional)* `(Relation)`
my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID (Optional)
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->list_presenters(program_id => $program_id, broadcast_id => $broadcast_id, model_type_id => $model_type_id, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PresenterApi->list_presenters: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program_id** | **int**| Search on Program ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID (Optional) | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_presenter_by_id**
> InlineResponse202 update_presenter_by_id(id => $id, presenter_data_input => $presenter_data_input)

Update presenter by id

Update presenter by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::PresenterApi;
my $api_instance = RadioManagerClient::PresenterApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | id of Presenter
my $presenter_data_input = RadioManagerClient::Object::PresenterDataInput->new(); # PresenterDataInput | Data *(Optional)*

eval {
    my $result = $api_instance->update_presenter_by_id(id => $id, presenter_data_input => $presenter_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PresenterApi->update_presenter_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of Presenter | 
 **presenter_data_input** | [**PresenterDataInput**](PresenterDataInput.md)| Data *(Optional)* | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

