import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/domain/repository/CountryFavoritesRepository.dart';

abstract class CountryFavoritesInteractor {
  Future<Pokemon> getNews(int countNews);
}

class CountryFavoritesInteractorImpl implements CountryFavoritesInteractor {
  final CountryFavoritesRepository _dbRepository;

  CountryFavoritesInteractorImpl(
    this._dbRepository,
  );

  @override
  Future<Pokemon> getNews(int countNews) async {
    return await _dbRepository.getNews(countNews);
  }
}
