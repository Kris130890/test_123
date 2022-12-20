import 'package:elinext_test_task/data/api/model/country/api_load_country_response.dart';
import 'package:elinext_test_task/domain/model/country/country.dart';

class CountryMapper {
  static Country toCountry(ApiLoadCountryResponse response) {
    final data = response;
    final list = <CountryArticles>[];
    response?.articles?.forEach((element) {
      list.add(
        CountryArticles(
          source: CountryArticlesSource(
            id: element.source?.id ?? '',
            name: element.source?.name ?? '',
          ),
          author: element.author,
          title: element.title,
          description: element.description,
          url: element.url,
          urlToImage: element.urlToImage,
          publishedAt: element.publishedAt,
          content: element.content,
        ),
      );
    });
    return Country(
      status: data?.status,
      totalResults: data?.totalResults,
      articles: list,
    );
  }
}
