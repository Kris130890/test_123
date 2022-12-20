class ApiLoadCountryResponse {
  final status;
  final totalResults;
  final List<ApiLoadCountryArticlesResponse>? articles;

  ApiLoadCountryResponse(
    this.status,
    this.totalResults,
    this.articles,
    Map<String, dynamic> json,
  );

  static ApiLoadCountryResponse fromJson(Map<String, dynamic> json) {
    final status = json['status'];
    final totalResults = json['totalResults'];
    final articles = json['articles'];
    return ApiLoadCountryResponse(
      status,
      totalResults,
      articles == null
          ? null
          : ApiLoadCountryArticlesResponse.fromJson(articles),
      json,
    );
  }
}

class ApiLoadCountryArticlesResponse {
  final ApiLoadCountryArticlesSourceResponse? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  ApiLoadCountryArticlesResponse(
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
    List<dynamic> json,
  );

  static List<ApiLoadCountryArticlesResponse> fromJson(List<dynamic> json) {
    final list = <ApiLoadCountryArticlesResponse>[];

    json.forEach((element) {
      final source = element['source'];
      final author = element['author'];
      final title = element['title'];
      final description = element['description'];
      final url = element['url'];
      final urlToImage = element['urlToImage'];
      final publishedAt = element['publishedAt'];
      final content = element['content'];
      list.add(
        ApiLoadCountryArticlesResponse(
          source == null
              ? null
              : ApiLoadCountryArticlesSourceResponse.fromJson(source),
          author,
          title,
          description,
          url,
          urlToImage,
          publishedAt,
          content,
          json,
        ),
      );
    });

    return list;
  }
}

class ApiLoadCountryArticlesSourceResponse {
  final String? id;
  final String? name;

  ApiLoadCountryArticlesSourceResponse(
    this.id,
    this.name,
  );

  static ApiLoadCountryArticlesSourceResponse fromJson(
          Map<String, dynamic> json) =>
      ApiLoadCountryArticlesSourceResponse(
        json['id'],
        json['name'],
      );
}
