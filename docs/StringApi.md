# RadioManagerClient::StringApi

## Load the API package
```perl
use RadioManagerClient::Object::StringApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_strings_by_name**](StringApi.md#get_strings_by_name) | **GET** /strings/{name} | Get Strings (formatted)


# **get_strings_by_name**
> TextString get_strings_by_name(name => $name, full_model => $full_model)

Get Strings (formatted)

Get RadioText/DAB String for publication based on String Templates

### Example
```perl
use Data::Dumper;
use RadioManagerClient::StringApi;
my $api_instance = RadioManagerClient::StringApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $name = "name_example"; # string | Name of String Template **(Required)**
my $full_model = null; # boolean | Full model or content only **(Optional)**

eval {
    my $result = $api_instance->get_strings_by_name(name => $name, full_model => $full_model);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StringApi->get_strings_by_name: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| Name of String Template **(Required)** | 
 **full_model** | **boolean**| Full model or content only **(Optional)** | [optional] 

### Return type

[**TextString**](TextString.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

