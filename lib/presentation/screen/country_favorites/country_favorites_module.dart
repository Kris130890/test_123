import 'package:elinext_test_task/data/db/repository/db_country_favourites_repository.dart';
import 'package:elinext_test_task/domain/interactor/country_favourites_interactor.dart';
import 'package:elinext_test_task/domain/repository/CountryFavoritesRepository.dart';
import 'country_favorites_mapper.dart';
import 'package:get_it/get_it.dart';
import 'country_favorites_bloc.dart';

initCountryFavoritesModule() {
  GetIt.I.registerFactory<CountryFavoritesBloc>(
    () => CountryFavoritesBlocImpl(
      GetIt.I.get(),
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory(
    () => DbCountryFavoritesRepositoryImpl(
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory<CountryFavoritesInteractor>(
    () => CountryFavoritesInteractorImpl(
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory<CountryFavoritesRepository>(
    () => DbCountryFavoritesRepositoryImpl(
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory<CountryFavoritesViewMapper>(
    () => CountryFavoritesViewMapperImpl(),
  );
}
