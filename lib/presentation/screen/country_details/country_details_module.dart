import 'package:elinext_test_task/data/db/repository/db_country_details_repository.dart';
import 'package:elinext_test_task/domain/interactor/country_details_interactor.dart';
import 'package:elinext_test_task/domain/repository/CountryDetailsRepository.dart';
import 'package:get_it/get_it.dart';
import 'country_details_bloc.dart';
import 'country_details_view_mapper.dart';

initCountryDetailsModule() {
  GetIt.I.registerFactory<CountryDetailsBloc>(
    () => CountryDetailsBlocImpl(
      GetIt.I.get(),
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory<CountryDetailsViewMapper>(
    () => CountryDetailsViewMapperImpl(),
  );
  GetIt.I.registerFactory(
    () => DbCountryDetailsRepositoryImpl(
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory<CountryDetailsInteractor>(
    () => CountryDetailsInteractorImpl(
      GetIt.I.get(),
    ),
  );
  GetIt.I.registerFactory<CountryDetailsRepository>(
    () => DbCountryDetailsRepositoryImpl(
      GetIt.I.get(),
    ),
  );
}
