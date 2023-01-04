import 'package:elinext_test_task/domain/model/country/country.dart';

abstract class CountryRepository {
  Future<Pokemon> loadCountryNews(int countNews);
}
