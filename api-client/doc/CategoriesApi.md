# api_client.api.CategoriesApi

## Load the API package
```dart
import 'package:api_client/api.dart';
```

All URIs are relative to *http://localhost:9000/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**restaurantsRidCategoriesCidGet**](CategoriesApi.md#restaurantsridcategoriescidget) | **get** /restaurants/{rid}/categories/{cid} | Get Category By Id
[**restaurantsRidCategoriesCidMenuGet**](CategoriesApi.md#restaurantsridcategoriescidmenuget) | **get** /restaurants/{rid}/categories/{cid}/menu | Get Menu By Category Id
[**restaurantsRidCategoriesCidPut**](CategoriesApi.md#restaurantsridcategoriescidput) | **put** /restaurants/{rid}/categories/{cid} | Update Category
[**restaurantsRidCategoriesGet**](CategoriesApi.md#restaurantsridcategoriesget) | **get** /restaurants/{rid}/categories/ | Get All Categories
[**restaurantsRidCategoriesPost**](CategoriesApi.md#restaurantsridcategoriespost) | **post** /restaurants/{rid}/categories/ | Create Category
[**restaurantsRidMenuCidDelete**](CategoriesApi.md#restaurantsridmenuciddelete) | **delete** /restaurants/{rid}/menu/{cid} | Delete Category


# **restaurantsRidCategoriesCidGet**
> DomainCategory restaurantsRidCategoriesCidGet(rid, cid)

Get Category By Id

get category by id for restaurant

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

var api_instance = new CategoriesApi();
var rid = rid_example; // String | Restaurant id
var cid = cid_example; // String | Category id

try { 
    var result = api_instance.restaurantsRidCategoriesCidGet(rid, cid);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->restaurantsRidCategoriesCidGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **cid** | **String**| Category id | 

### Return type

[**DomainCategory**](DomainCategory.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidCategoriesCidMenuGet**
> BuiltList<DomainMenuItem> restaurantsRidCategoriesCidMenuGet(rid, cid)

Get Menu By Category Id

get menu items by catgory id

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

var api_instance = new CategoriesApi();
var rid = rid_example; // String | restaurant id
var cid = cid_example; // String | category id

try { 
    var result = api_instance.restaurantsRidCategoriesCidMenuGet(rid, cid);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->restaurantsRidCategoriesCidMenuGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| restaurant id | 
 **cid** | **String**| category id | 

### Return type

[**BuiltList<DomainMenuItem>**](DomainMenuItem.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidCategoriesCidPut**
> V1Response restaurantsRidCategoriesCidPut(rid, cid)

Update Category

update category

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new CategoriesApi();
var rid = rid_example; // String | Restaurant id
var cid = cid_example; // String | Category id

try { 
    var result = api_instance.restaurantsRidCategoriesCidPut(rid, cid);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->restaurantsRidCategoriesCidPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **cid** | **String**| Category id | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidCategoriesGet**
> BuiltList<DomainCategory> restaurantsRidCategoriesGet(rid)

Get All Categories

get all categories for user

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

var api_instance = new CategoriesApi();
var rid = rid_example; // String | Restaurant id

try { 
    var result = api_instance.restaurantsRidCategoriesGet(rid);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->restaurantsRidCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 

### Return type

[**BuiltList<DomainCategory>**](DomainCategory.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidCategoriesPost**
> V1IdResponse restaurantsRidCategoriesPost(rid, input)

Create Category

create category

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new CategoriesApi();
var rid = rid_example; // String | Restaurant id
var input = new V1CategoryInput(); // V1CategoryInput | category input info

try { 
    var result = api_instance.restaurantsRidCategoriesPost(rid, input);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->restaurantsRidCategoriesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **input** | [**V1CategoryInput**](V1CategoryInput.md)| category input info | 

### Return type

[**V1IdResponse**](V1IdResponse.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidMenuCidDelete**
> V1Response restaurantsRidMenuCidDelete(rid, cid)

Delete Category

delete category

### Example 
```dart
import 'package:api_client/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('RestaurantAuth').apiKeyPrefix = 'Bearer';

var api_instance = new CategoriesApi();
var rid = rid_example; // String | Restaurant id
var cid = cid_example; // String | Category id

try { 
    var result = api_instance.restaurantsRidMenuCidDelete(rid, cid);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->restaurantsRidMenuCidDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 
 **cid** | **String**| Category id | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

