part of swagger.api;

class CategoriesApi {
  final ApiClient apiClient;

  CategoriesApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// Get Category By Id
  ///
  /// get category by id for restaurant
  Future<DomainCategory> restaurantsRidCategoriesCidGet(
      String rid, String cid) async {
    Object postBody = null;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (cid == null) {
      throw new ApiException(400, "Missing required param: cid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/categories/{cid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString())
        .replaceAll("{" + "cid" + "}", cid.toString());

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
      return apiClient.deserialize(response.body, 'DomainCategory')
          as DomainCategory;
    } else {
      return null;
    }
  }

  /// Get Menu By Category Id
  ///
  /// get menu items by catgory id
  Future<List<DomainMenuItem>> restaurantsRidCategoriesCidMenuGet(
      String rid, String cid) async {
    Object postBody = null;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (cid == null) {
      throw new ApiException(400, "Missing required param: cid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/categories/{cid}/menu"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString())
        .replaceAll("{" + "cid" + "}", cid.toString());

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

  /// Update Category
  ///
  /// update category
  Future<V1Response> restaurantsRidCategoriesCidPut(
      String rid, String cid) async {
    Object postBody = null;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (cid == null) {
      throw new ApiException(400, "Missing required param: cid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/categories/{cid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString())
        .replaceAll("{" + "cid" + "}", cid.toString());

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

  /// Get All Categories
  ///
  /// get all categories for user
  Future<List<DomainCategory>> restaurantsRidCategoriesGet(String rid) async {
    Object postBody = null;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/categories/"
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
      return (apiClient.deserialize(response.body, 'List<DomainCategory>')
              as List)
          .map((item) => item as DomainCategory)
          .toList();
    } else {
      return null;
    }
  }

  /// Create Category
  ///
  /// create category
  Future<V1IdResponse> restaurantsRidCategoriesPost(
      String rid, V1CategoryInput input) async {
    Object postBody = input;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/categories/"
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

  /// Delete Category
  ///
  /// delete category
  Future<V1Response> restaurantsRidMenuCidDelete(String rid, String cid) async {
    Object postBody = null;

    // verify required params are set
    if (rid == null) {
      throw new ApiException(400, "Missing required param: rid");
    }
    if (cid == null) {
      throw new ApiException(400, "Missing required param: cid");
    }

    // create path and map variables
    String path = "/restaurants/{rid}/menu/{cid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "rid" + "}", rid.toString())
        .replaceAll("{" + "cid" + "}", cid.toString());

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
}
