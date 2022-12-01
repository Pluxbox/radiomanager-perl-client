# RadioManagerClient::StationApi

## Load the API package
```perl
use RadioManagerClient::Object::StationApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_station**](StationApi.md#get_station) | **GET** /station | Get own station only


# **get_station**
> StationResult get_station()

Get own station only

Get own station only

### Example
```perl
use Data::Dumper;
use RadioManagerClient::StationApi;
my $api_instance = RadioManagerClient::StationApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->get_station();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StationApi->get_station: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StationResult**](StationResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

