# RadioManagerClient::SearchApi

## Load the API package
```perl
use RadioManagerClient::Object::SearchApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_search**](SearchApi.md#get_search) | **POST** /search | Search.


# **get_search**
> get_search(data => $data)

Search.

You know. For search.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::SearchApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::SearchApi->new();
my $data = RadioManagerClient::Object::SearchDataInput->new(); # SearchDataInput | Data *(Optional)*

eval { 
    $api_instance->get_search(data => $data);
};
if ($@) {
    warn "Exception when calling SearchApi->get_search: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**SearchDataInput**](SearchDataInput.md)| Data *(Optional)* | [optional] 

### Return type

void (empty response body)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

