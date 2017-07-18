# RadioManagerClient::VisualSlideApi

## Load the API package
```perl
use RadioManagerClient::Object::VisualSlideApi;
```

All URIs are relative to *https://staging.radiomanager.pluxbox.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_visual_slide**](VisualSlideApi.md#download_visual_slide) | **GET** /visual/image | Get Visual Slide Image as JPEG
[**get_visual_slide**](VisualSlideApi.md#get_visual_slide) | **GET** /visual | Get Visual Slide Image as Base64


# **download_visual_slide**
> VisualImageResult download_visual_slide()

Get Visual Slide Image as JPEG

Get Visual Slide Image as JPEG

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::VisualSlideApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::VisualSlideApi->new();

eval { 
    my $result = $api_instance->download_visual_slide();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling VisualSlideApi->download_visual_slide: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VisualImageResult**](VisualImageResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_visual_slide**
> VisualResult get_visual_slide()

Get Visual Slide Image as Base64

Get Visual Slide Image as Base64

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::VisualSlideApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::VisualSlideApi->new();

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
