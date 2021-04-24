# api_client.api.CouriersApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost:9000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**couriersCidGet**](CouriersApi.md#courierscidget) | **get** /couriers/{cid} | Get Courier By Id
[**couriersCidPut**](CouriersApi.md#courierscidput) | **put** /couriers/{cid} | Update Courier
[**couriersSignInPost**](CouriersApi.md#courierssigninpost) | **post** /couriers/sign-in | Courier SignIn
[**couriersSignUpPost**](CouriersApi.md#courierssignuppost) | **post** /couriers/sign-up | Courier SignUp


# **couriersCidGet**
> DomainCourier couriersCidGet(cid)

Get Courier By Id

get courier by id

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: UserAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserAuth').apiKeyPrefix = 'Bearer';

var api_instance = new CouriersApi();
var cid = cid_example; // String | Courier id

try { 
    var result = api_instance.couriersCidGet(cid);
    print(result);
} catch (e) {
    print('Exception when calling CouriersApi->couriersCidGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Courier id | 

### Return type

[**DomainCourier**](DomainCourier.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **couriersCidPut**
> V1Response couriersCidPut(cid, input)

Update Courier

update courier

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: AdminAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('AdminAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AdminAuth').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: CourierAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('CourierAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('CourierAuth').apiKeyPrefix = 'Bearer';

var api_instance = new CouriersApi();
var cid = cid_example; // String | Courier id
var input = new V1CourierUpdate(); // V1CourierUpdate | courier update info

try { 
    var result = api_instance.couriersCidPut(cid, input);
    print(result);
} catch (e) {
    print('Exception when calling CouriersApi->couriersCidPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Courier id | 
 **input** | [**V1CourierUpdate**](V1CourierUpdate.md)| courier update info | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[AdminAuth](../README.md#AdminAuth), [CourierAuth](../README.md#CourierAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **couriersSignInPost**
> V1TokenResponse couriersSignInPost(input)

Courier SignIn

courier sign in

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new CouriersApi();
var input = new V1SignInInput(); // V1SignInInput | sign in info

try { 
    var result = api_instance.couriersSignInPost(input);
    print(result);
} catch (e) {
    print('Exception when calling CouriersApi->couriersSignInPost: $e\n');
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

# **couriersSignUpPost**
> V1TokenResponse couriersSignUpPost(input)

Courier SignUp

courier sign up

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new CouriersApi();
var input = new V1CourierSignUpInput(); // V1CourierSignUpInput | sign up info

try { 
    var result = api_instance.couriersSignUpPost(input);
    print(result);
} catch (e) {
    print('Exception when calling CouriersApi->couriersSignUpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**V1CourierSignUpInput**](V1CourierSignUpInput.md)| sign up info | 

### Return type

[**V1TokenResponse**](V1TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

