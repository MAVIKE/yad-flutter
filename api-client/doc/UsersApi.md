# api_client.api.UsersApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost:9000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersSignInPost**](UsersApi.md#userssigninpost) | **post** /users/sign-in | User SignIn
[**usersSignUpPost**](UsersApi.md#userssignuppost) | **post** /users/sign-up | User SignUp
[**usersUidGet**](UsersApi.md#usersuidget) | **get** /users/{uid} | Get User By Id
[**usersUidPut**](UsersApi.md#usersuidput) | **put** /users/{uid} | Update User


# **usersSignInPost**
> V1TokenResponse usersSignInPost(input)

User SignIn

user sign in

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new UsersApi();
var input = new V1SignInInput(); // V1SignInInput | sign in info

try { 
    var result = api_instance.usersSignInPost(input);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersSignInPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**V1SignInInput**](V1SignInInput.md)| sign in info | 

### Return type

[**V1TokenResponse**](V1TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersSignUpPost**
> V1TokenResponse usersSignUpPost(input)

User SignUp

user sign up

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new UsersApi();
var input = new V1UserSignUpInput(); // V1UserSignUpInput | sign up info

try { 
    var result = api_instance.usersSignUpPost(input);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersSignUpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**V1UserSignUpInput**](V1UserSignUpInput.md)| sign up info | 

### Return type

[**V1TokenResponse**](V1TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUidGet**
> DomainUser usersUidGet(uid)

Get User By Id

get user by id

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: CourierAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('CourierAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CourierAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: UserAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserAuth').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var uid = uid_example; // String | user id

try { 
    var result = api_instance.usersUidGet(uid);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersUidGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| user id | 

### Return type

[**DomainUser**](DomainUser.md)

### Authorization

[CourierAuth](../README.md#CourierAuth), [RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUidPut**
> V1Response usersUidPut(uid, input)

Update User

update user

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: UserAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserAuth').apiKeyPrefix = 'Bearer';

var api_instance = new UsersApi();
var uid = uid_example; // String | User id
var input = new V1UserUpdateInput(); // V1UserUpdateInput | user update info

try { 
    var result = api_instance.usersUidPut(uid, input);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersUidPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| User id | 
 **input** | [**V1UserUpdateInput**](V1UserUpdateInput.md)| user update info | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

