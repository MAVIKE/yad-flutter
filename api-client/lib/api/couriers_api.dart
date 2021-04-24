part of swagger.api;



class CouriersApi {
  final ApiClient apiClient;

  CouriersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Courier By Id
  ///
  /// get courier by id
  Future<DomainCourier> couriersCidGet(String cid) async {
    Object postBody = null;

    // verify required params are set
    if(cid == null) {
     throw new ApiException(400, "Missing required param: cid");
    }

    // create path and map variables
    String path = "/couriers/{cid}".replaceAll("{format}","json").replaceAll("{" + "cid" + "}", cid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["RestaurantAuth", "UserAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'DomainCourier') as DomainCourier ;
    } else {
      return null;
    }
  }
  /// Update Courier
  ///
  /// update courier
  Future<V1Response> couriersCidPut(String cid, V1CourierUpdate input) async {
    Object postBody = input;

    // verify required params are set
    if(cid == null) {
     throw new ApiException(400, "Missing required param: cid");
    }
    if(input == null) {
     throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/couriers/{cid}".replaceAll("{format}","json").replaceAll("{" + "cid" + "}", cid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["AdminAuth", "CourierAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'V1Response') as V1Response ;
    } else {
      return null;
    }
  }
  /// Courier SignIn
  ///
  /// courier sign in
  Future<V1TokenResponse> couriersSignInPost(V1SignInInput input) async {
    Object postBody = input;

    // verify required params are set
    if(input == null) {
     throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/couriers/sign-in".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'V1TokenResponse') as V1TokenResponse ;
    } else {
      return null;
    }
  }
  /// Courier SignUp
  ///
  /// courier sign up
  Future<V1TokenResponse> couriersSignUpPost(V1CourierSignUpInput input) async {
    Object postBody = input;

    // verify required params are set
    if(input == null) {
     throw new ApiException(400, "Missing required param: input");
    }

    // create path and map variables
    String path = "/couriers/sign-up".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'V1TokenResponse') as V1TokenResponse ;
    } else {
      return null;
    }
  }
}
