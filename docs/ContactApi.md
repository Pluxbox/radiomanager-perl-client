# RadioManagerClient::ContactApi

## Load the API package
```perl
use RadioManagerClient::Object::ContactApi;
```

All URIs are relative to *https://radiomanager.pb/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_contact**](ContactApi.md#create_contact) | **POST** /contacts | Create contact.
[**delete_contact_by_id**](ContactApi.md#delete_contact_by_id) | **DELETE** /contacts/{id} | Delete contact by id
[**get_contact_by_id**](ContactApi.md#get_contact_by_id) | **GET** /contacts/{id} | Get contact by id
[**list_contacts**](ContactApi.md#list_contacts) | **GET** /contacts | Get all contacts.
[**update_contact_by_id**](ContactApi.md#update_contact_by_id) | **PATCH** /contacts/{id} | Update contact by id


# **create_contact**
> PostSuccess create_contact(data => $data)

Create contact.

Create contact.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ContactApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ContactApi->new();
my $data = RadioManagerClient::Object::ContactDataInput->new(); # ContactDataInput | Data **(Required)**

eval { 
    my $result = $api_instance->create_contact(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->create_contact: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ContactDataInput**](ContactDataInput.md)| Data **(Required)** | 

### Return type

[**PostSuccess**](PostSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contact_by_id**
> Success delete_contact_by_id(id => $id)

Delete contact by id

Delete contact by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ContactApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ContactApi->new();
my $id = 789; # int | ID of Contact **(Required)**

eval { 
    my $result = $api_instance->delete_contact_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->delete_contact_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Contact **(Required)** | 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contact_by_id**
> ContactResult get_contact_by_id(id => $id, _external_station_id => $_external_station_id)

Get contact by id

Get contact by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ContactApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ContactApi->new();
my $id = 789; # int | ID of Contact **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->get_contact_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->get_contact_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Contact **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ContactResult**](ContactResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_contacts**
> ContactResults list_contacts(page => $page, item_id => $item_id, model_type_id => $model_type_id, tag_id => $tag_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all contacts.

List all contacts.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ContactApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ContactApi->new();
my $page = 789; # int | Current page *(Optional)*
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_contacts(page => $page, item_id => $item_id, model_type_id => $model_type_id, tag_id => $tag_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->list_contacts: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **tag_id** | **int**| Search on Tag ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**ContactResults**](ContactResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_contact_by_id**
> Success update_contact_by_id(id => $id, data => $data)

Update contact by id

Update contact by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ContactApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ContactApi->new();
my $id = 789; # int | ID of Contact **(Required)**
my $data = RadioManagerClient::Object::ContactDataInput->new(); # ContactDataInput | Data *(Optional)*

eval { 
    my $result = $api_instance->update_contact_by_id(id => $id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactApi->update_contact_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Contact **(Required)** | 
 **data** | [**ContactDataInput**](ContactDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

