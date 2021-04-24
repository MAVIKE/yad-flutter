part of swagger.api;

class RestaurantsApi {
  final ApiClient apiClient;

  RestaurantsApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get All Restaurants
  ///
  /// get all restaurants for user
  Future<List<DomainRestaurant>> restaurantsGet() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/restaurants/".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return (apiClient.deserialize(response.body, 'List<DomainRestaurant>')
              as List)
          .map((item) => item as DomainRestaurant)
          .toList();
    } else {
      return null;
    }
  }

  /// Get Restaurant Image
  ///
  /// get restaurant image
  Future<String> restaurantsImageGet() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/restaurants/image".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }

  /// Get Menu Item Image
  ///
  /// get menu item image
  Future<String> restaurantsMenuImageGet() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/restaurants/menu/image".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return apiClient.deserialize(response.body, 'String') as String;
    } else {
      return null;
    }
  }

  /// Get Restaurant By Id
  ///
  /// get restaurant by id for user
  Future<DomainRestaurant> restaurantsRidGet(String rid) async {
    Object postBody;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return apiClient.deserialize(response.body, 'DomainRestaurant')
          as DomainRestaurant;
    } else {
      return null;
    }
  }

  /// Update Restaurant Image
  ///
  /// update restaurant image
  Future<DomainRestaurant> restaurantsRidImagePut() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/restaurants/{rid}/image".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'DomainRestaurant')
          as DomainRestaurant;
    } else {
      return null;
    }
  }

  /// Get Restaurant Menu
  ///
  /// get restaurant menu
  Future<List<DomainMenuItem>> restaurantsRidMenuGet(String rid) async {
    Object postBody;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/menu/"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return (apiClient.deserialize(response.body, 'List<DomainMenuItem>')
              as List)
          .map((item) => item as DomainMenuItem)
          .toList();
    } else {
      return null;
    }
  }

  /// Delete MenuItem
  ///
  /// delete menu item
  Future<V1Response> restaurantsRidMenuIdDelete(String oid) async {
    Object postBody;

    // verify required params are set
    if (oid == null) {
      throw new ApiException(400, "Missing required param: oid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/menu/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "oid" + "}", oid.toString());

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

  /// Get Menu Item By Id
  ///
  /// get menu item by id
  Future<DomainMenuItem> restaurantsRidMenuIdGet(String rid, String id) async {
    Object postBody;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/menu/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString())
        .replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(response.body, 'DomainMenuItem')
          as DomainMenuItem;
    } else {
      return null;
    }
  }

  /// Update Menu Item Image
  ///
  /// update menu item image
  Future<DomainMenuItem> restaurantsRidMenuIdImagePut() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path =
        "/restaurants/{rid}/menu/{id}/image".replaceAll("{format}", "json");

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

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'DomainMenuItem')
          as DomainMenuItem;
    } else {
      return null;
    }
  }

  /// Update Menu Item
  ///
  /// update menu item
  Future<V1Response> restaurantsRidMenuIdPut(
      String rid, String id, V1MenuItemUpdate input) async {
    Object postBody = input;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (id == null) {
      throw new ApiException(400, "Missing required param: id");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/menu/{id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString())
        .replaceAll("{" + "id" + "}", id.toString());

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

  /// Create MenuItem
  ///
  /// create menu item
  Future<V1IdResponse> restaurantsRidMenuPost(
      String rid, V1MenuItemInput input) async {
    Object postBody = input;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/menu/"
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

  /// Update Restaurant
  ///
  /// update restaurant
  Future<V1Response> restaurantsRidPut(
      String rid, V1RestaurantUpdateInput input) async {
    Object postBody = input;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/restaurants/{rid}"
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

  /// Restaurant SignIn
  ///
  /// restaurant sign in
  Future<V1TokenResponse> restaurantsSignInPost(V1SignInInput input) async {
    Object postBody = input;

    // verify required params are set
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/restaurants/sign-in".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(response.body, 'V1TokenResponse')
          as V1TokenResponse;
    } else {
      return null;
    }
  }

  /// Restaurant SignUp
  ///
  /// restaurant sign up
  Future<V1TokenResponse> restaurantsSignUpPost(
      V1RestaurantSignUpInput input) async {
    Object postBody = input;

    // verify required params are set
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/restaurants/sign-up".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

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
      return apiClient.deserialize(response.body, 'V1TokenResponse')
          as V1TokenResponse;
    } else {
      return null;
    }
  }
}
