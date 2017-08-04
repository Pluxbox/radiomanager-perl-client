# RadioManagerClient::UserApi

## Load the API package
```perl
use RadioManagerClient::Object::UserApi;
```

All URIs are relative to *http://radiomanager.pb/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_by_id**](UserApi.md#delete_user_by_id) | **DELETE** /users/{id} | Remove user from station by Id
[**get_user_by_id**](UserApi.md#get_user_by_id) | **GET** /users/{id} | Get user by id
[**invite_user_by_mail**](UserApi.md#invite_user_by_mail) | **POST** /users/invite | Invite user by mail
[**list_users**](UserApi.md#list_users) | **GET** /users | Get all users.


# **delete_user_by_id**
> Success delete_user_by_id(id => $id)

Remove user from station by Id

Remove user from station by Id

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $id = 789; # int | id of User

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
 **id** | **int**| id of User | 

### Return type

[**Success**](Success.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
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

    # Configure API key authorization: API Key
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

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invite_user_by_mail**
> InviteUserSuccess invite_user_by_mail(data => $data)

Invite user by mail

Invite user by mail

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $data = RadioManagerClient::Object::InviteUserData->new(); # InviteUserData | Data **(Required)**

eval { 
    my $result = $api_instance->invite_user_by_mail(data => $data);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->invite_user_by_mail: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**InviteUserData**](InviteUserData.md)| Data **(Required)** | 

### Return type

[**InviteUserSuccess**](InviteUserSuccess.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_users**
> UserResults list_users(page => $page, role_id => $role_id)

Get all users.

List all users.

### Example 
```perl
use Data::Dumper;
use RadioManagerClient::UserApi;
my $api_instance = RadioManagerClient::UserApi->new(

    # Configure API key authorization: API Key
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
);

my $page = 789; # int | Current page *(Optional)*
my $role_id = 789; # int | Search on Role ID *(Optional)*

eval { 
    my $result = $api_instance->list_users(page => $page, role_id => $role_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UserApi->list_users: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Current page *(Optional)* | [optional] [default to 1]
 **role_id** | **int**| Search on Role ID *(Optional)* | [optional] 

### Return type

[**UserResults**](UserResults.md)

### Authorization

[API Key](../README.md#API Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

