import 'package:elinext_test_task/domain/model/country/country.dart';

abstract class CountryDetailsRepository {
  Future<CountryArticles> getNews(String title);

  Future<int> insertNews(Country tile);

  Future<int> deleteNews(String title);
}
