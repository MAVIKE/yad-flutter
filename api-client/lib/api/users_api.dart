part of swagger.api;

class UsersApi {
  final ApiClient apiClient;

  UsersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// User SignIn
  ///
  /// user sign in
  Future<V1TokenResponse> usersSignInPost(V1SignInInput input) async {
    Object postBody = input;

    // verify required params are set
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/users/sign-in".replaceAll("{format}", "json");

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

  /// User SignUp
  ///
  /// user sign up
  Future<V1TokenResponse> usersSignUpPost(V1UserSignUpInput input) async {
    Object postBody = input;

    // verify required params are set
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/users/sign-up".replaceAll("{format}", "json");

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

  /// Get User By Id
  ///
  /// get user by id
  Future<DomainUser> usersUidGet(String uid) async {
    Object postBody;

    // verify required params are set
    if (uid == null) {
      throw new ApiException(400, "Missing required param: uid");
    }

    // create path and map variables
    String path = "/users/{uid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "uid" + "}", uid.toString());

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
      return apiClient.deserialize(response.body, 'DomainUser') as DomainUser;
    } else {
      return null;
    }
  }

  /// Update User
  ///
  /// update user
  Future<V1Response> usersUidPut(String uid, V1UserUpdateInput input) async {
    Object postBody = input;

    // verify required params are set
    if (uid == null) {
      throw new ApiException(400, "Missing required param: uid");
    }
    if (input == null) {
      throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/users/{uid}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "uid" + "}", uid.toString());

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
}
