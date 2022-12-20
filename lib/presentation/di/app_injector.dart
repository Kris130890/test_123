import 'package:elinext_test_task/presentation/screen/country/country_module.dart';
import 'package:elinext_test_task/presentation/screen/country_details/country_details_module.dart';
import 'package:elinext_test_task/presentation/screen/country_favorites/country_favorites_module.dart';
import 'package:sqflite/sqflite.dart';

import 'global_db_module.dart';

initInjector(Database database) async {
  ///region country
  initGlobalDbModule(database);
  initCountryModule();
  initCountryDetailsModule();
  initCountryFavoritesModule();

  ///endregion
}
