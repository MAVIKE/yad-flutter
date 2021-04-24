# api_client.api.RestaurantsApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost:9000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**restaurantsGet**](RestaurantsApi.md#restaurantsget) | **get** /restaurants/ | Get All Restaurants
[**restaurantsImageGet**](RestaurantsApi.md#restaurantsimageget) | **get** /restaurants/image | Get Restaurant Image
[**restaurantsMenuImageGet**](RestaurantsApi.md#restaurantsmenuimageget) | **get** /restaurants/menu/image | Get Menu Item Image
[**restaurantsRidGet**](RestaurantsApi.md#restaurantsridget) | **get** /restaurants/{rid} | Get Restaurant By Id
[**restaurantsRidImagePut**](RestaurantsApi.md#restaurantsridimageput) | **put** /restaurants/{rid}/image | Update Restaurant Image
[**restaurantsRidMenuGet**](RestaurantsApi.md#restaurantsridmenuget) | **get** /restaurants/{rid}/menu/ | Get Restaurant Menu
[**restaurantsRidMenuIdDelete**](RestaurantsApi.md#restaurantsridmenuiddelete) | **delete** /restaurants/{rid}/menu/{id} | Delete MenuItem
[**restaurantsRidMenuIdGet**](RestaurantsApi.md#restaurantsridmenuidget) | **get** /restaurants/{rid}/menu/{id} | Get Menu Item By Id
[**restaurantsRidMenuIdImagePut**](RestaurantsApi.md#restaurantsridmenuidimageput) | **put** /restaurants/{rid}/menu/{id}/image | Update Menu Item Image
[**restaurantsRidMenuIdPut**](RestaurantsApi.md#restaurantsridmenuidput) | **put** /restaurants/{rid}/menu/{id} | Update Menu Item
[**restaurantsRidMenuPost**](RestaurantsApi.md#restaurantsridmenupost) | **post** /restaurants/{rid}/menu/ | Create MenuItem
[**restaurantsRidPut**](RestaurantsApi.md#restaurantsridput) | **put** /restaurants/{rid} | Update Restaurant
[**restaurantsSignInPost**](RestaurantsApi.md#restaurantssigninpost) | **post** /restaurants/sign-in | Restaurant SignIn
[**restaurantsSignUpPost**](RestaurantsApi.md#restaurantssignuppost) | **post** /restaurants/sign-up | Restaurant SignUp


# **restaurantsGet**
> BuiltList<DomainRestaurant> restaurantsGet()

Get All Restaurants

get all restaurants for user

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

var api_instance = new RestaurantsApi();

try { 
    var result = api_instance.restaurantsGet();
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<DomainRestaurant>**](DomainRestaurant.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsImageGet**
> String restaurantsImageGet()

Get Restaurant Image

get restaurant image

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

var api_instance = new RestaurantsApi();

try { 
    var result = api_instance.restaurantsImageGet();
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsImageGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsMenuImageGet**
> String restaurantsMenuImageGet()

Get Menu Item Image

get menu item image

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

var api_instance = new RestaurantsApi();

try { 
    var result = api_instance.restaurantsMenuImageGet();
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsMenuImageGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidGet**
> DomainRestaurant restaurantsRidGet(rid)

Get Restaurant By Id

get restaurant by id for user

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

var api_instance = new RestaurantsApi();
var rid = rid_example; // String | Restaurant id

try { 
    var result = api_instance.restaurantsRidGet(rid);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 

### Return type

[**DomainRestaurant**](DomainRestaurant.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidImagePut**
> DomainRestaurant restaurantsRidImagePut()

Update Restaurant Image

update restaurant image

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new RestaurantsApi();

try { 
    var result = api_instance.restaurantsRidImagePut();
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidImagePut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainRestaurant**](DomainRestaurant.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuGet**
> BuiltList<DomainMenuItem> restaurantsRidMenuGet(rid)

Get Restaurant Menu

get restaurant menu

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

var api_instance = new RestaurantsApi();
var rid = rid_example; // String | Restaurant id

try { 
    var result = api_instance.restaurantsRidMenuGet(rid);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidMenuGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 

### Return type

[**BuiltList<DomainMenuItem>**](DomainMenuItem.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuIdDelete**
> V1Response restaurantsRidMenuIdDelete(oid)

Delete MenuItem

delete menu item

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new RestaurantsApi();
var oid = oid_example; // String | MenuItem id

try { 
    var result = api_instance.restaurantsRidMenuIdDelete(oid);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidMenuIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| MenuItem id | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuIdGet**
> DomainMenuItem restaurantsRidMenuIdGet(rid, id)

Get Menu Item By Id

get menu item by id

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new RestaurantsApi();
var rid = rid_example; // String | Restaurant id
var id = id_example; // String | MenuItem id

try { 
    var result = api_instance.restaurantsRidMenuIdGet(rid, id);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidMenuIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **id** | **String**| MenuItem id | 

### Return type

[**DomainMenuItem**](DomainMenuItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuIdImagePut**
> DomainMenuItem restaurantsRidMenuIdImagePut()

Update Menu Item Image

update menu item image

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new RestaurantsApi();

try { 
    var result = api_instance.restaurantsRidMenuIdImagePut();
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidMenuIdImagePut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DomainMenuItem**](DomainMenuItem.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuIdPut**
> V1Response restaurantsRidMenuIdPut(rid, id, input)

Update Menu Item

update menu item

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new RestaurantsApi();
var rid = rid_example; // String | Restaurant id
var id = id_example; // String | MenuItem id
var input = new V1MenuItemUpdate(); // V1MenuItemUpdate | menu item update info

try { 
    var result = api_instance.restaurantsRidMenuIdPut(rid, id, input);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidMenuIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **id** | **String**| MenuItem id | 
 **input** | [**V1MenuItemUpdate**](V1MenuItemUpdate.md)| menu item update info | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuPost**
> V1IdResponse restaurantsRidMenuPost(rid, input)

Create MenuItem

create menu item

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new RestaurantsApi();
var rid = rid_example; // String | Restaurant id
var input = new V1MenuItemInput(); // V1MenuItemInput | menuItem input info

try { 
    var result = api_instance.restaurantsRidMenuPost(rid, input);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidMenuPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **input** | [**V1MenuItemInput**](V1MenuItemInput.md)| menuItem input info | 

### Return type

[**V1IdResponse**](V1IdResponse.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidPut**
> V1Response restaurantsRidPut(rid, input)

Update Restaurant

update restaurant

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new RestaurantsApi();
var rid = rid_example; // String | Restaurant id
var input = new V1RestaurantUpdateInput(); // V1RestaurantUpdateInput | restaurant update info

try { 
    var result = api_instance.restaurantsRidPut(rid, input);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsRidPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **input** | [**V1RestaurantUpdateInput**](V1RestaurantUpdateInput.md)| restaurant update info | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsSignInPost**
> V1TokenResponse restaurantsSignInPost(input)

Restaurant SignIn

restaurant sign in

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new RestaurantsApi();
var input = new V1SignInInput(); // V1SignInInput | sign up info

try { 
    var result = api_instance.restaurantsSignInPost(input);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsSignInPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**V1SignInInput**](V1SignInInput.md)| sign up info | 

### Return type

[**V1TokenResponse**](V1TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsSignUpPost**
> V1TokenResponse restaurantsSignUpPost(input)

Restaurant SignUp

restaurant sign up

### Example 
```dart
import 'package:api_client/api.dart';

var api_instance = new RestaurantsApi();
var input = new V1RestaurantSignUpInput(); // V1RestaurantSignUpInput | sign up info

try { 
    var result = api_instance.restaurantsSignUpPost(input);
    print(result);
} catch (e) {
    print('Exception when calling RestaurantsApi->restaurantsSignUpPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**V1RestaurantSignUpInput**](V1RestaurantSignUpInput.md)| sign up info | 

### Return type

[**V1TokenResponse**](V1TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

