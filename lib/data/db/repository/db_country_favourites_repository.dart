import 'package:elinext_test_task/data/db/mapper/country_favourites_mapper.dart';
import 'package:elinext_test_task/data/db/service/DbService.dart';
import 'package:elinext_test_task/data/utils/const.dart';
import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/domain/repository/CountryFavoritesRepository.dart';

class DbCountryFavoritesRepositoryImpl implements CountryFavoritesRepository {
  final DbService _dbService;

  DbCountryFavoritesRepositoryImpl(this._dbService);

  @override
  Future<Country> getNews(int countNews) => _dbService
      .query(
        C.TABLE_COUNTRY,
        limit: countNews,
      )
      .then((value) => CountryFavoritesMapper.toListCountryTile(value));
}
