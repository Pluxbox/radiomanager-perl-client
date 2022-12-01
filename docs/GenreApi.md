# RadioManagerClient::GenreApi

## Load the API package
```perl
use RadioManagerClient::Object::GenreApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_genre_by_id**](GenreApi.md#get_genre_by_id) | **GET** /genres/{id} | Get genre by id
[**list_genres**](GenreApi.md#list_genres) | **GET** /genres | List all genres.


# **get_genre_by_id**
> GenreResult get_genre_by_id(id => $id)

Get genre by id

Get genre by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::GenreApi;
my $api_instance = RadioManagerClient::GenreApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | 

eval {
    my $result = $api_instance->get_genre_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GenreApi->get_genre_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GenreResult**](GenreResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_genres**
> InlineResponse2006 list_genres(page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction)

List all genres.

List all genres.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::GenreApi;
my $api_instance = RadioManagerClient::GenreApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*

eval {
    my $result = $api_instance->list_genres(page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GenreApi->list_genres: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

