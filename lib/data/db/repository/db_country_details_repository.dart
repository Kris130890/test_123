import 'package:elinext_test_task/data/db/mapper/country_details_mapper.dart';
import 'package:elinext_test_task/data/db/service/DbService.dart';
import 'package:elinext_test_task/data/utils/const.dart';
import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/domain/repository/CountryDetailsRepository.dart';
import 'package:sqflite/sqflite.dart';

class DbCountryDetailsRepositoryImpl implements CountryDetailsRepository {
  final DbService _dbService;

  DbCountryDetailsRepositoryImpl(this._dbService);

  @override
  Future<CountryArticles> getNews(String title) => _dbService.query(
        C.TABLE_COUNTRY,
        where: 'title = ?',
        whereArgs: [title],
      ).then((value) => CountryDetailsMapper.toCountryArticles(value));

  @override
  Future<int> deleteNews(String title) => _dbService.delete(
        C.TABLE_COUNTRY,
        where: 'title = ?',
        whereArgs: [title],
      );

  @override
  Future<int> insertNews(Country tile) {
    final map = CountryDetailsMapper.toMap(tile);
    return _dbService.insert(
      C.TABLE_COUNTRY,
      map,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
