import 'package:http/http.dart';

class RequestService {
  var baseUrl = "https://app-mobile-api-redirect.vercel.app";

  Future<Response> getTopHeadLines({String? country, String? category, String? q, String? pageSize, String? apiKey}) async {
    Map<String, dynamic> params = {};

    if (country != null) params["country"] = country;
    if (category != null) params["category"] = category;
    if (q != null) params["q"] = q;
    if (pageSize != null) params["pageSize"] = pageSize;
    if (apiKey != null) params["apiKey"] = apiKey;

    var url = Uri.parse(baseUrl + "/news/top-headlines").replace(queryParameters: params);
    return await get(url);
  }

  Future<Response> getEverything({String? q, String? searchIn, String? language, String? apiKey}) async {
    Map<String, dynamic> params = {};

    if (q != null) params["q"] = q;
    if (searchIn != null) params["searchIn"] = searchIn;
    if (language != null) params["language"] = language;
    if (apiKey != null) params["apiKey"] = apiKey;

    var url = Uri.parse(baseUrl + "/news/everything").replace(queryParameters: params);
    return await get(url);
  }

}
