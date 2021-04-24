# swagger.api.OrdersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost:9000/api/v1/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**couriersCidOrdersGet**](OrdersApi.md#couriersCidOrdersGet) | **GET** /couriers/{cid}/orders | Get Active Order
[**ordersOidDelete**](OrdersApi.md#ordersOidDelete) | **DELETE** /orders/{oid} | Delete Order
[**ordersOidGet**](OrdersApi.md#ordersOidGet) | **GET** /orders/{oid} | Get Order By Id
[**ordersOidItemsGet**](OrdersApi.md#ordersOidItemsGet) | **GET** /orders/{oid}/items/ | Get All Order Items By Order Id
[**ordersOidItemsIdDelete**](OrdersApi.md#ordersOidItemsIdDelete) | **DELETE** /orders/{oid}/items/{id} | Delete Order Item
[**ordersOidItemsIdGet**](OrdersApi.md#ordersOidItemsIdGet) | **GET** /orders/{oid}/items/{id} | Get Order Item By Id
[**ordersOidItemsIdPut**](OrdersApi.md#ordersOidItemsIdPut) | **PUT** /orders/{oid}/items/{id} | Update Order Item
[**ordersOidItemsPost**](OrdersApi.md#ordersOidItemsPost) | **POST** /orders/{oid}/items/ | Create Order Item
[**ordersOidPut**](OrdersApi.md#ordersOidPut) | **PUT** /orders/{oid} | Update Order
[**ordersPost**](OrdersApi.md#ordersPost) | **POST** /orders/ | Create Order
[**restaurantsRidOrdersGet**](OrdersApi.md#restaurantsRidOrdersGet) | **GET** /restaurants/{rid}/orders/ | Get All Active Orders For Restaurant
[**usersUidOrdersGet**](OrdersApi.md#usersUidOrdersGet) | **GET** /users/{uid}/orders | Get All Orders


# **couriersCidOrdersGet**
> V1Response couriersCidOrdersGet(cid)

Get Active Order

get active order for courier

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: CourierAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var cid = cid_example; // String | Courier id

try { 
    var result = api_instance.couriersCidOrdersGet(cid);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->couriersCidOrdersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cid** | **String**| Courier id | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[CourierAuth](../README.md#CourierAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidDelete**
> V1Response ordersOidDelete(oid)

Delete Order

delete order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id

try { 
    var result = api_instance.ordersOidDelete(oid);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidGet**
> DomainOrder ordersOidGet(oid)

Get Order By Id

get order by id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: CourierAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: RestaurantAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id

try { 
    var result = api_instance.ordersOidGet(oid);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 

### Return type

[**DomainOrder**](DomainOrder.md)

### Authorization

[CourierAuth](../README.md#CourierAuth), [RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidItemsGet**
> List<DomainOrderItem> ordersOidItemsGet(oid)

Get All Order Items By Order Id

get all order items by order id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: CourierAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: RestaurantAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id

try { 
    var result = api_instance.ordersOidItemsGet(oid);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidItemsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 

### Return type

[**List<DomainOrderItem>**](DomainOrderItem.md)

### Authorization

[CourierAuth](../README.md#CourierAuth), [RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidItemsIdDelete**
> V1Response ordersOidItemsIdDelete(oid, id)

Delete Order Item

delete order item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id
var id = id_example; // String | Order item id

try { 
    var result = api_instance.ordersOidItemsIdDelete(oid, id);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidItemsIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 
 **id** | **String**| Order item id | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidItemsIdGet**
> DomainOrderItem ordersOidItemsIdGet(oid, id)

Get Order Item By Id

get order item by id

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: CourierAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: RestaurantAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id
var id = id_example; // String | Order item id

try { 
    var result = api_instance.ordersOidItemsIdGet(oid, id);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidItemsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 
 **id** | **String**| Order item id | 

### Return type

[**DomainOrderItem**](DomainOrderItem.md)

### Authorization

[CourierAuth](../README.md#CourierAuth), [RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidItemsIdPut**
> V1Response ordersOidItemsIdPut(oid, id, input)

Update Order Item

update order item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id
var id = id_example; // String | Order item id
var input = new V1OrderItemUpdate(); // V1OrderItemUpdate | order item update info

try { 
    var result = api_instance.ordersOidItemsIdPut(oid, id, input);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidItemsIdPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 
 **id** | **String**| Order item id | 
 **input** | [**V1OrderItemUpdate**](V1OrderItemUpdate.md)| order item update info | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidItemsPost**
> V1IdResponse ordersOidItemsPost(oid, input)

Create Order Item

create order item

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id
var input = new V1OrderItemInput(); // V1OrderItemInput | order item create info

try { 
    var result = api_instance.ordersOidItemsPost(oid, input);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidItemsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 
 **input** | [**V1OrderItemInput**](V1OrderItemInput.md)| order item create info | 

### Return type

[**V1IdResponse**](V1IdResponse.md)

### Authorization

[UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOidPut**
> V1Response ordersOidPut(oid, input)

Update Order

update order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: CourierAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: RestaurantAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var oid = oid_example; // String | Order id
var input = new V1OrderUpdate(); // V1OrderUpdate | order update info

try { 
    var result = api_instance.ordersOidPut(oid, input);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersOidPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oid** | **String**| Order id | 
 **input** | [**V1OrderUpdate**](V1OrderUpdate.md)| order update info | 

### Return type

[**V1Response**](V1Response.md)

### Authorization

[CourierAuth](../README.md#CourierAuth), [RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersPost**
> V1IdResponse ordersPost(input)

Create Order

create order

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var input = new V1OrderInput(); // V1OrderInput | order input info

try { 
    var result = api_instance.ordersPost(input);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->ordersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**V1OrderInput**](V1OrderInput.md)| order input info | 

### Return type

[**V1IdResponse**](V1IdResponse.md)

### Authorization

[UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restaurantsRidOrdersGet**
> List<DomainOrder> restaurantsRidOrdersGet(rid)

Get All Active Orders For Restaurant

get all active orders for restaurant

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var rid = rid_example; // String | Restaurant id

try { 
    var result = api_instance.restaurantsRidOrdersGet(rid);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->restaurantsRidOrdersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rid** | **String**| Restaurant id | 

### Return type

[**List<DomainOrder>**](DomainOrder.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUidOrdersGet**
> List<DomainOrder> usersUidOrdersGet(uid, status)

Get All Orders

get all orders for user

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: RestaurantAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
// TODO Configure API key authorization: UserAuth
//swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new OrdersApi();
var uid = uid_example; // String | User id
var status = status_example; // String | Status

try { 
    var result = api_instance.usersUidOrdersGet(uid, status);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->usersUidOrdersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| User id | 
 **status** | **String**| Status | [optional] 

### Return type

[**List<DomainOrder>**](DomainOrder.md)

### Authorization

[RestaurantAuth](../README.md#RestaurantAuth), [UserAuth](../README.md#UserAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

