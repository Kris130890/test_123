import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/domain/repository/CountryDetailsRepository.dart';

abstract class CountryDetailsInteractor {
  Future<CountryArticles> getNews(String title);

  Future<int> insertNews(Country tile);

  Future<int> deleteNews(String title);
}

class CountryDetailsInteractorImpl implements CountryDetailsInteractor {
  final CountryDetailsRepository _dbRepository;

  CountryDetailsInteractorImpl(
    this._dbRepository,
  );

  @override
  Future<int> insertNews(Country tile) async {
    return await _dbRepository.insertNews(tile);
  }

  @override
  Future<int> deleteNews(String title) async {
    return await _dbRepository.deleteNews(title);
  }

  @override
  Future<CountryArticles> getNews(String title) async {
    return await _dbRepository.getNews(title);
  }
}
