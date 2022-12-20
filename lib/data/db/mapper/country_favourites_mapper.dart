import 'package:elinext_test_task/domain/model/country/country.dart';

class CountryFavoritesMapper {
  static Country toListCountryTile(List<Map<String, dynamic>> values) {
    final list = <CountryArticles>[];
    values?.forEach((element) {
      list.add(
        CountryArticles(
          source: CountryArticlesSource(
            id: element['source_id'],
            name: element['source_name'],
          ),
          author: element['author'],
          title: element['title'],
          description: element['description'],
          url: element['url'],
          urlToImage: element['urlToImage'],
          publishedAt: element['publishedAt'],
          content: element['content'],
        ),
      );
    });
    return Country(
      articles: list,
    );
  }
}
