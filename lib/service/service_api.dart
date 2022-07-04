import 'package:http/http.dart';

class RequestService {
  var baseUrl = "https://app-mobile-api-redirect.vercel.app";

  Future<Response> getTopHeadLines(
      {String? country,
      String? category,
      String? q,
      String? pageSize,
      String? apiKey}) async {
    Map<String, dynamic> params = {};

    if (country != null) params["country"] = country;
    if (category != null) params["category"] = category;
    if (q != null) params["q"] = q;
    if (pageSize != null) params["pageSize"] = pageSize;
    if (apiKey != null) params["apiKey"] = apiKey;

    var url = Uri.parse(baseUrl + "/news/top-headlines")
        .replace(queryParameters: params);
    return await get(url);
  }

  Future<Response> getEverything({
    String? q,
    String? sources,
    String? language,
    String? apiKey,
  }) async {
    Map<String, dynamic> params = {'searchIn': 'title,description'};

    if (q != null && q != '') params['q'] = q;
    if (language != null && language != '') params['language'] = language;
    if (sources != null && sources != '') params['sources'] = sources;
    if (apiKey != null && apiKey != '') params['apiKey'] = apiKey;

    var url = Uri.parse(baseUrl + "/news/everything")
        .replace(queryParameters: params);
    return await get(url);
  }
}
