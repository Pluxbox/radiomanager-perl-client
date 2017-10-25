# RadioManagerClient::StoryApi

## Load the API package
```perl
use RadioManagerClient::Object::StoryApi;
```

All URIs are relative to *https://radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_story**](StoryApi.md#create_story) | **POST** /stories | Create story.
[**delete_story_by_id**](StoryApi.md#delete_story_by_id) | **DELETE** /stories/{id} | Delete story by id
[**get_story_by_id**](StoryApi.md#get_story_by_id) | **GET** /stories/{id} | Get story by id
[**list_stories**](StoryApi.md#list_stories) | **GET** /stories | Get all stories.
[**update_story_by_id**](StoryApi.md#update_story_by_id) | **PATCH** /stories/{id} | Update story by id


# **create_story**
> PostSuccess create_story(data => $data)

Create story.

Create story.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::StoryApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::StoryApi->new();
my $data = RadioManagerClient::Object::StoryDataInput->new(); # StoryDataInput | Data **(Required)**

eval { 
    my $result = $api_instance->create_story(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoryApi->create_story: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**StoryDataInput**](StoryDataInput.md)| Data **(Required)** | 

### Return type

[**PostSuccess**](PostSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_story_by_id**
> Success delete_story_by_id(id => $id)

Delete story by id

Delete story by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::StoryApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::StoryApi->new();
my $id = 789; # int | ID of Story **(Required)**

eval { 
    my $result = $api_instance->delete_story_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoryApi->delete_story_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Story **(Required)** | 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_story_by_id**
> StoryResult get_story_by_id(id => $id, _external_station_id => $_external_station_id)

Get story by id

Get story by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::StoryApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::StoryApi->new();
my $id = 789; # int | ID of Story **(Required)**
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->get_story_by_id(id => $id, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoryApi->get_story_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Story **(Required)** | 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**StoryResult**](StoryResult.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_stories**
> StoryResults list_stories(page => $page, item_id => $item_id, model_type_id => $model_type_id, tag_id => $tag_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all stories.

List all stories.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::StoryApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::StoryApi->new();
my $page = 789; # int | Current page *(Optional)*
my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $tag_id = 789; # int | Search on Tag ID *(Optional)* `(Relation)`
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = 'order_by_example'; # string | Field to order the results *(Optional)*
my $order_direction = 'order_direction_example'; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval { 
    my $result = $api_instance->list_stories(page => $page, item_id => $item_id, model_type_id => $model_type_id, tag_id => $tag_id, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoryApi->list_stories: $@\n";
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

[**StoryResults**](StoryResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_story_by_id**
> Success update_story_by_id(id => $id, data => $data)

Update story by id

Update story by id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::Configuration;
use RadioManagerClient::StoryApi;

# Configure API key authorization: API Key
$RadioManagerClient::Configuration::api_key->{'api-key'} = 'YOUR_API_KEY';
# uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$RadioManagerClient::Configuration::api_key_prefix->{'api-key'} = "Bearer";

my $api_instance = RadioManagerClient::StoryApi->new();
my $id = 789; # int | ID of Story **(Required)**
my $data = RadioManagerClient::Object::StoryDataInput->new(); # StoryDataInput | Data *(Optional)*

eval { 
    my $result = $api_instance->update_story_by_id(id => $id, data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling StoryApi->update_story_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Story **(Required)** | 
 **data** | [**StoryDataInput**](StoryDataInput.md)| Data *(Optional)* | [optional] 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

