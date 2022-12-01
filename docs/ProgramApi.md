# RadioManagerClient::ProgramApi

## Load the API package
```perl
use RadioManagerClient::Object::ProgramApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_program**](ProgramApi.md#create_program) | **POST** /programs | Create program.
[**delete_program_by_id**](ProgramApi.md#delete_program_by_id) | **DELETE** /programs/{id} | Delete program by id
[**get_program_by_id**](ProgramApi.md#get_program_by_id) | **GET** /programs/{id} | Get program by id
[**list_programs**](ProgramApi.md#list_programs) | **GET** /programs | Get all programs.
[**update_program_by_id**](ProgramApi.md#update_program_by_id) | **PATCH** /programs/{id} | Update program by id


# **create_program**
> InlineResponse2002 create_program(program_data_input => $program_data_input)

Create program.

Create program.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ProgramApi;
my $api_instance = RadioManagerClient::ProgramApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $program_data_input = RadioManagerClient::Object::ProgramDataInput->new(); # ProgramDataInput | Data **(Required)**

eval {
    my $result = $api_instance->create_program(program_data_input => $program_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->create_program: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program_data_input** | [**ProgramDataInput**](ProgramDataInput.md)| Data **(Required)** | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_program_by_id**
> InlineResponse202 delete_program_by_id(id => $id)

Delete program by id

Delete program by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ProgramApi;
my $api_instance = RadioManagerClient::ProgramApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of program **(Required)**

eval {
    my $result = $api_instance->delete_program_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->delete_program_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of program **(Required)** | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_program_by_id**
> ProgramResult get_program_by_id(id => $id, _external_station_id => $_external_station_id)

Get program by id

Get program by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ProgramApi;
my $api_instance = RadioManagerClient::ProgramApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Program **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->get_program_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->get_program_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Program **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ProgramResult**](ProgramResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_programs**
> InlineResponse20011 list_programs(broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, group_id => $group_id, block_id => $block_id, item_id => $item_id, disabled => $disabled, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all programs.

List all programs.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ProgramApi;
my $api_instance = RadioManagerClient::ProgramApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $presenter_id = 789; # int | Search on Presenter ID *(Optional)* `(Relation)`
my $genre_id = 789; # int | Search on Genre ID *(Optional)*
my $group_id = 789; # int | Search on Group ID *(Optional)*
my $block_id = 789; # int | Search on Block ID *(Optional)* `(Relation)`
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $disabled = 56; # int | Search on Disabled status *(Optional)*
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->list_programs(broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, group_id => $group_id, block_id => $block_id, item_id => $item_id, disabled => $disabled, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->list_programs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **presenter_id** | **int**| Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **genre_id** | **int**| Search on Genre ID *(Optional)* | [optional] 
 **group_id** | **int**| Search on Group ID *(Optional)* | [optional] 
 **block_id** | **int**| Search on Block ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **disabled** | **int**| Search on Disabled status *(Optional)* | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_program_by_id**
> InlineResponse202 update_program_by_id(id => $id, program_data_input => $program_data_input)

Update program by id

Update program by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::ProgramApi;
my $api_instance = RadioManagerClient::ProgramApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Program **(Required)**
my $program_data_input = RadioManagerClient::Object::ProgramDataInput->new(); # ProgramDataInput | Data *(Optional)*

eval {
    my $result = $api_instance->update_program_by_id(id => $id, program_data_input => $program_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->update_program_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Program **(Required)** | 
 **program_data_input** | [**ProgramDataInput**](ProgramDataInput.md)| Data *(Optional)* | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

