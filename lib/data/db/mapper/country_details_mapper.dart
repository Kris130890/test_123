import 'package:elinext_test_task/domain/model/country/country.dart';

class CountryDetailsMapper {
  static CountryArticles toCountryArticles(List<Map<String, dynamic>> values) {
    if (values.isEmpty) {
      return CountryArticles();
    } else {
      return CountryArticles(
          source: CountryArticlesSource(
            id: values.first['source_id'],
            name: values.first['source_name'],
          ),
          author: values.first['author'],
          title: values.first['title'],
          description: values.first['description'],
          url: values.first['url'],
          urlToImage: values.first['urlToImage'],
          publishedAt: values.first['publishedAt'],
          content: values.first['content']);
    }
  }

  static Map<String, dynamic> toMap(Country tile) {
    final map = Map<String, dynamic>();
    map['source_id'] = tile.articles?.first.source?.id;
    map['source_name'] = tile.articles?.first.source?.name;
    map['author'] = tile.articles?.first.author;
    map['title'] = tile.articles?.first.title;
    map['description'] = tile.articles?.first.description;
    map['url'] = tile.articles?.first.url;
    map['urlToImage'] = tile.articles?.first.urlToImage;
    map['publishedAt'] = tile.articles?.first.publishedAt;
    map['content'] = tile.articles?.first.content;
    return map;
  }
}
