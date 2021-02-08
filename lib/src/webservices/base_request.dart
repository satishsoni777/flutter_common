import 'package:http/http.dart' as http;

abstract class BaseRequest {
  bool authenticated;
  String url;
  HttpMethod method;
  dynamic body;
  Map<String, String> headers;
  String baseUrl;

  // TODO Query Params

  Future<http.Response> constructAndExecuteRequest(
      {HttpMethod method,
      String endpoint,
      bool authenticated,
      dynamic body}) async {
    await constructRequest(
        method: method,
        endpoint: endpoint,
        authenticated: authenticated,
        body: body);
    return await executeRequest();
  }

  constructRequest(
      {HttpMethod method,
      String endpoint,
      bool authenticated,
      dynamic body}) async {
    this.method = method;
    this.url = await getBaseUrl() + endpoint;
    this.authenticated = authenticated;
    this.body = body;
  }

  executeRequest() async {
    switch (method) {
      case HttpMethod.get:
        return http.get(url, headers: headers);
      case HttpMethod.post:
        return http.post(url, headers: headers, body: body);
      case HttpMethod.put:
        return http.put(url, headers: headers, body: body);
      case HttpMethod.delete:
        return http.delete(url, headers: headers);
    }
  }

  setRequestHeaders() async {
    headers = {"": ""};
  }

  getBaseUrl() {
    baseUrl = "";
  }
}

enum HttpMethod { get, post, put, delete }
