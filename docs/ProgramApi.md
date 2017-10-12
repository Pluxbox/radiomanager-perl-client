# RadioManagerClient::ProgramApi

## Load the API package
```perl
use RadioManagerClient::Object::ProgramApi;
```

All URIs are relative to *https://radiomanager.pb/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_program**](ProgramApi.md#create_program) | **POST** /programs | Create program.
[**delete_program_by_id**](ProgramApi.md#delete_program_by_id) | **DELETE** /programs/{id} | Delete program by id
[**get_program_by_id**](ProgramApi.md#get_program_by_id) | **GET** /programs/{id} | Get program by id
[**list_programs**](ProgramApi.md#list_programs) | **GET** /programs | Get all programs.
[**update_program_by_id**](ProgramApi.md#update_program_by_id) | **PATCH** /programs/{id} | Update program by id


# **create_program**
> PostSuccess create_program(data => $data)

Create program.

Create program.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ProgramApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ProgramApi->new();
my $data = RadioManagerClient::Object::ProgramDataInput->new(); # ProgramDataInput | Data **(Required)**

eval { 
    my $result = $api_instance->create_program(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->create_program: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ProgramDataInput**](ProgramDataInput.md)| Data **(Required)** | 

### Return type

[**PostSuccess**](PostSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_program_by_id**
> Success delete_program_by_id(id => $id)

Delete program by id

Delete program by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ProgramApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ProgramApi->new();
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

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_program_by_id**
> ProgramResult get_program_by_id(id => $id, _external_station_id => $_external_station_id)

Get program by id

Get program by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ProgramApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ProgramApi->new();
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

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_programs**
> ProgramResults list_programs(page => $page, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, block_id => $block_id, item_id => $item_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all programs.

List all programs.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ProgramApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ProgramApi->new();
my $page = 789; # int | Current page *(Optional)*
my $broadcast_id = 789; # int | Search on Broadcast ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $presenter_id = 789; # int | Search on Presenter ID *(Optional)* `(Relation)`
my $genre_id = 789; # int | Search on Genre ID *(Optional)*
my $block_id = 789; # int | Search on Block ID *(Optional)* `(Relation)`
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_programs(page => $page, broadcast_id => $broadcast_id, model_type_id => $model_type_id, tag_id => $tag_id, presenter_id => $presenter_id, genre_id => $genre_id, block_id => $block_id, item_id => $item_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ProgramApi->list_programs: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] 
 **broadcast_id** | **int**| Search on Broadcast ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **presenter_id** | **int**| Search on Presenter ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **genre_id** | **int**| Search on Genre ID *(Optional)* | [optional] 
 **block_id** | **int**| Search on Block ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ProgramResults**](ProgramResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_program_by_id**
> Success update_program_by_id(id => $id, data => $data)

Update program by id

Update program by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ProgramApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ProgramApi->new();
my $id = 789; # int | ID of Program **(Required)**
my $data = RadioManagerClient::Object::ProgramDataInput->new(); # ProgramDataInput | Data *(Optional)*

eval { 
    my $result = $api_instance->update_program_by_id(id => $id, data => $data);
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
 **data** | [**ProgramDataInput**](ProgramDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

