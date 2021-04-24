part of swagger.api;

class OrdersApi {
  final ApiClient apiClient;

  OrdersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Active Order
  ///
  /// get active order for courier
  Future<V1Response> couriersCidOrdersGet(String cid) async {
    Object postBody;

    // verify required params are set
    if (cid == null) {
      throw new ApiException(400, "Missing required param: cid");
    }

    // create path and map variables
    String path = "/couriers/{cid}/orders"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "cid" + "}", cid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["CourierAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1Response') as V1Response;
    } else {
      return null;
    }
  }

  /// Delete Order
  ///
  /// delete order
  Future<V1Response> ordersOidDelete(String oid) async {
    Object postBody;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }

    // create path and map variables
    String path = "/orders/{oid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1Response') as V1Response;
    } else {
      return null;
    }
  }

  /// Get Order By Id
  ///
  /// get order by id
  Future<DomainOrder> ordersOidGet(String oid) async {
    Object postBody;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }

    // create path and map variables
    String path = "/orders/{oid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["CourierAuth", "RestaurantAuth", "UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'DomainOrder') as DomainOrder;
    } else {
      return null;
    }
  }

  /// Get All Order Items By Order Id
  ///
  /// get all order items by order id
  Future<List<DomainOrderItem>> ordersOidItemsGet(String oid) async {
    Object postBody;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }

    // create path and map variables
    String path = "/orders/{oid}/items/"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["CourierAuth", "RestaurantAuth", "UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<DomainOrderItem>')
              as List)
          .map((item) => item as DomainOrderItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Delete Order Item
  ///
  /// delete order item
  Future<V1Response> ordersOidItemsIdDelete(String oid, String id) async {
    Object postBody;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/orders/{oid}/items/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString())
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1Response') as V1Response;
    } else {
      return null;
    }
  }

  /// Get Order Item By Id
  ///
  /// get order item by id
  Future<DomainOrderItem> ordersOidItemsIdGet(String oid, String id) async {
    Object postBody;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/orders/{oid}/items/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString())
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["CourierAuth", "RestaurantAuth", "UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'DomainOrderItem')
          as DomainOrderItem;
    } else {
      return null;
    }
  }

  /// Update Order Item
  ///
  /// update order item
  Future<V1Response> ordersOidItemsIdPut(
      String oid, String id, V1OrderItemUpdate input) async {
    Object postBody = input;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/orders/{oid}/items/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString())
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1Response') as V1Response;
    } else {
      return null;
    }
  }

  /// Create Order Item
  ///
  /// create order item
  Future<V1IdResponse> ordersOidItemsPost(
      String oid, V1OrderItemInput input) async {
    Object postBody = input;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/orders/{oid}/items/"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1IdResponse')
          as V1IdResponse;
    } else {
      return null;
    }
  }

  /// Update Order
  ///
  /// update order
  Future<V1Response> ordersOidPut(String oid, V1OrderUpdate input) async {
    Object postBody = input;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/orders/{oid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["CourierAuth", "RestaurantAuth", "UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1Response') as V1Response;
    } else {
      return null;
    }
  }

  /// Create Order
  ///
  /// create order
  Future<V1IdResponse> ordersPost(V1OrderInput input) async {
    Object postBody = input;

    // verify required params are set
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/orders/".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'V1IdResponse')
          as V1IdResponse;
    } else {
      return null;
    }
  }

  /// Get All Active Orders For Restaurant
  ///
  /// get all active orders for restaurant
  Future<List<DomainOrder>> restaurantsRidOrdersGet(String rid) async {
    Object postBody;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/orders/"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["RestaurantAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<DomainOrder>') as List)
          .map((item) => item as DomainOrder)
          .toList();
    } else {
      return null;
    }
  }

  /// Get All Orders
  ///
  /// get all orders for user
  Future<List<DomainOrder>> usersUidOrdersGet(String uid,
      {String status}) async {
    Object postBody;

    // verify required params are set
    if (uid == null) {
      throw new ApiException(400, "Missing required param: uid");
    }

    // create path and map variables
    String path = "/users/{uid}/orders"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "uid" + "}", uid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (status != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "status", status));
    }

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["RestaurantAuth", "UserAuth"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<DomainOrder>') as List)
          .map((item) => item as DomainOrder)
          .toList();
    } else {
      return null;
    }
  }
}
