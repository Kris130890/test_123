import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/domain/repository/CountryRepository.dart';

abstract class CountryInteractor {
  Future<Pokemon> loadCountryNews(int countNews);
}

class CountryInteractorImpl implements CountryInteractor {
  final CountryRepository _apiRepository;

  CountryInteractorImpl(
    this._apiRepository,
  );

  @override
  Future<Pokemon> loadCountryNews(int countNews) async {
    return await _apiRepository.loadCountryNews(countNews);
  }
}
