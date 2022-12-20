import 'package:flutter/cupertino.dart';

class Country {
  final String? status;
  final int? totalResults;
  final List<CountryArticles>? articles;

  Country({
    this.status,
    this.totalResults,
    @required this.articles,
  });
}

class CountryArticles {
  final CountryArticlesSource? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  CountryArticles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
}

class CountryArticlesSource {
  final String? id;
  final String? name;

  CountryArticlesSource({
    this.id,
    this.name,
  });
}
