import 'package:dio/dio.dart';
import 'package:elinext_test_task/data/api/service/ApiService.dart';
import 'package:elinext_test_task/data/db/service/DbService.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:sqflite/sqflite.dart';

initGlobalDbModule(Database database) {
  GetIt.I.registerFactory<DbService>(
    () => DbServiceImpl(
      database,
    ),
  );
  GetIt.I.registerFactory<ApiService>(
    () => ApiServiceImpl(
      _dioBuilder(),
    ),
  );
}

_dioBuilder() {
  final dio = Dio();

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      compact: false,
    ),
  );

  return dio;
}
