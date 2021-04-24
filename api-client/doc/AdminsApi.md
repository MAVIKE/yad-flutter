# api_client.api.AdminsApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost:9000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminsSignInPost**](AdminsApi.md#adminssigninpost) | **post** /admins/sign-in | Admin SignIn


# **adminsSignInPost**
> V1TokenResponse adminsSignInPost(input)

Admin SignIn

admin sign in

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new AdminsApi();
var input = new V1SignInInput(); // V1SignInInput | sign in info

try { 
    var result = api_instance.adminsSignInPost(input);
    print(result);
} catch (e) {
    print('Exception when calling AdminsApi->adminsSignInPost: $e\n');
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

