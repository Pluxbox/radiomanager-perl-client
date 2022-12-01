# RadioManagerClient::UserApi

## Load the API package
```perl
use RadioManagerClient::Object::UserApi;
```

All URIs are relative to *https://staging.radiomanager.io/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_by_id**](UserApi.md#delete_user_by_id) | **DELETE** /users/{id} | Remove User from station by Id
[**get_user_by_id**](UserApi.md#get_user_by_id) | **GET** /users/{id} | Get user by id
[**invite_user_by_mail**](UserApi.md#invite_user_by_mail) | **POST** /users/invite | Invite user by mail
[**list_users**](UserApi.md#list_users) | **GET** /users | Get all users.


# **delete_user_by_id**
> InlineResponse202 delete_user_by_id(id => $id)

Remove User from station by Id

Remove User from station by Id, will not actually delete a User record

### Example
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | ID of User **(Required)**

eval {
    my $result = $api_instance->delete_user_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->delete_user_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of User **(Required)** | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_by_id**
> UserResult get_user_by_id(id => $id)

Get user by id

Get user by id

### Example
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | id of User

eval {
    my $result = $api_instance->get_user_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->get_user_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of User | 

### Return type

[**UserResult**](UserResult.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invite_user_by_mail**
> InlineResponse202 invite_user_by_mail(invite_user_data => $invite_user_data)

Invite user by mail

Invite user by mail

### Example
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $invite_user_data = RadioManagerClient::Object::InviteUserData->new(); # InviteUserData | Data *(Required)*

eval {
    my $result = $api_instance->invite_user_by_mail(invite_user_data => $invite_user_data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->invite_user_by_mail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invite_user_data** | [**InviteUserData**](InviteUserData.md)| Data *(Required)* | 

### Return type

[**InlineResponse202**](InlineResponse202.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_users**
> InlineResponse20013 list_users(role_id => $role_id, group_id => $group_id, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction)

Get all users.

List all users.

### Example
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API-Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $role_id = 789; # int | Search on Role ID *(Optional)*
my $group_id = 789; # int | Search on Group ID *(Optional)*
my $page = 1; # int | Current page *(Optional)*
my $limit = 789; # int | Results per page *(Optional)*
my $order_by = "order_by_example"; # string | Field to order the results *(Optional)*
my $order_direction = "order_direction_example"; # string | Direction of ordering *(Optional)*

eval {
    my $result = $api_instance->list_users(role_id => $role_id, group_id => $group_id, page => $page, limit => $limit, order_by => $order_by, order_direction => $order_direction);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->list_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_id** | **int**| Search on Role ID *(Optional)* | [optional] 
 **group_id** | **int**| Search on Group ID *(Optional)* | [optional] 
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **limit** | **int**| Results per page *(Optional)* | [optional] 
 **order_by** | **string**| Field to order the results *(Optional)* | [optional] 
 **order_direction** | **string**| Direction of ordering *(Optional)* | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[API-Key](../README.md#API-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

