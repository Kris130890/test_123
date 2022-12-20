import 'package:elinext_test_task/data/api/mapper/country_mapper.dart';
import 'package:elinext_test_task/data/api/model/country/api_load_country_response.dart';
import 'package:elinext_test_task/data/api/service/ApiService.dart';
import 'package:elinext_test_task/data/utils/const.dart';
import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/domain/repository/CountryRepository.dart';

class ApiCountryRepositoryImpl implements CountryRepository {
  final ApiService _apiService;

  ApiCountryRepositoryImpl(this._apiService);

  @override
  Future<Country> loadCountryNews(int countNews) => _apiService
      .get(C.getCountry(countNews))
      .then((value) => ApiLoadCountryResponse.fromJson(value.data))
      .then((value) => CountryMapper.toCountry(value));
}
