# RadioManagerClient::ExternalMessageApi

## Load the API package
```perl
use RadioManagerClient::Object::ExternalMessageApi;
```

All URIs are relative to *https://radiomanager.pb/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**queue_external_message**](ExternalMessageApi.md#queue_external_message) | **POST** /externalmessagequeue | Queue External Message.


# **queue_external_message**
> object queue_external_message(message => $message)

Queue External Message.

Queue External Message.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::ExternalMessageApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::ExternalMessageApi->new();
my $message = RadioManagerClient::Object::ExternalMessageQueueData->new(); # ExternalMessageQueueData | Data **(Required)**

eval { 
    my $result = $api_instance->queue_external_message(message => $message);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ExternalMessageApi->queue_external_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message** | [**ExternalMessageQueueData**](ExternalMessageQueueData.md)| Data **(Required)** | 

### Return type

**object**

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

