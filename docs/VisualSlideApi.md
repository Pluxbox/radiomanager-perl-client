# RadioManagerClient::VisualSlideApi

## Load the API package
```perl
use RadioManagerClient::Object::VisualSlideApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_visual_slide**](VisualSlideApi.md#get_visual_slide) | **GET** /visual | Get Visual Slide Image as Base64


# **get_visual_slide**
> VisualResult get_visual_slide()

Get Visual Slide Image as Base64

Get Visual Slide Image as Base64

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::VisualSlideApi;
my $api_instance = RadioManagerClient::VisualSlideApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);


eval { 
    my $result = $api_instance->get_visual_slide();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VisualSlideApi->get_visual_slide: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VisualResult**](VisualResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

