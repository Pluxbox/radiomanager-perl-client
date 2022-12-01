# RadioManagerClient::CampaignApi

## Load the API package
```perl
use RadioManagerClient::Object::CampaignApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_campaign**](CampaignApi.md#create_campaign) | **POST** /campaigns | Create campaign.
[**delete_campaign_by_id**](CampaignApi.md#delete_campaign_by_id) | **DELETE** /campaigns/{id} | Delete campaign by id
[**get_campaign_by_id**](CampaignApi.md#get_campaign_by_id) | **GET** /campaigns/{id} | Get campaign by id
[**list_campaigns**](CampaignApi.md#list_campaigns) | **GET** /campaigns | Get all campaigns.
[**update_campaign_by_id**](CampaignApi.md#update_campaign_by_id) | **PATCH** /campaigns/{id} | Update campaign by id


# **create_campaign**
> InlineResponse2002 create_campaign(campaign_data_input => $campaign_data_input)

Create campaign.

Create campaign.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::CampaignApi;
my $api_instance = RadioManagerClient::CampaignApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $campaign_data_input = RadioManagerClient::Object::CampaignDataInput->new(); # CampaignDataInput | Data **(Required)**

eval {
    my $result = $api_instance->create_campaign(campaign_data_input => $campaign_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignApi->create_campaign: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_data_input** | [**CampaignDataInput**](CampaignDataInput.md)| Data **(Required)** | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_campaign_by_id**
> InlineResponse202 delete_campaign_by_id(id => $id)

Delete campaign by id

Delete campaign by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::CampaignApi;
my $api_instance = RadioManagerClient::CampaignApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Campaign **(Required)**

eval {
    my $result = $api_instance->delete_campaign_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignApi->delete_campaign_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Campaign **(Required)** | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_campaign_by_id**
> CampaignResult get_campaign_by_id(id => $id)

Get campaign by id

Get campaign by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::CampaignApi;
my $api_instance = RadioManagerClient::CampaignApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Campaign **(Required)**

eval {
    my $result = $api_instance->get_campaign_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignApi->get_campaign_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Campaign **(Required)** | 

### Return type

[**CampaignResult**](CampaignResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_campaigns**
> InlineResponse2004 list_campaigns(item_id => $item_id, model_type_id => $model_type_id, start_min => $start_min, start_max => $start_max, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id)

Get all campaigns.

List all campaigns.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::CampaignApi;
my $api_instance = RadioManagerClient::CampaignApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $item_id = 789; # int | Search on Item ID *(Optional)* `(Relation)`
my $model_type_id = 789; # int | Search on ModelType ID *(Optional)* `(Relation)`
my $start_min = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Minimum start date *(Optional)*
my $start_max = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | Maximum start date *(Optional)*
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*
my $_external_station_id = 789; # int | Query on a different (content providing) station *(Optional)*

eval {
    my $result = $api_instance->list_campaigns(item_id => $item_id, model_type_id => $model_type_id, start_min => $start_min, start_max => $start_max, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction, _external_station_id => $_external_station_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignApi->list_campaigns: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **item_id** | **int**| Search on Item ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **model_type_id** | **int**| Search on ModelType ID *(Optional)* &#x60;(Relation)&#x60; | [optional] 
 **start_min** | **DATE_TIME**| Minimum start date *(Optional)* | [optional] 
 **start_max** | **DATE_TIME**| Maximum start date *(Optional)* | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 
 **_external_station_id** | **int**| Query on a different (content providing) station *(Optional)* | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_campaign_by_id**
> InlineResponse202 update_campaign_by_id(id => $id, campaign_data_input => $campaign_data_input)

Update campaign by id

Update campaign by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::CampaignApi;
my $api_instance = RadioManagerClient::CampaignApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of Campaign **(Required)**
my $campaign_data_input = RadioManagerClient::Object::CampaignDataInput->new(); # CampaignDataInput | Data **(Optional)**

eval {
    my $result = $api_instance->update_campaign_by_id(id => $id, campaign_data_input => $campaign_data_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CampaignApi->update_campaign_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of Campaign **(Required)** | 
 **campaign_data_input** | [**CampaignDataInput**](CampaignDataInput.md)| Data **(Optional)** | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

