import 'package:elinext_test_task/domain/model/country/country.dart';

abstract class CountryFavoritesRepository {
  Future<Country> getNews(int countNews);
}
