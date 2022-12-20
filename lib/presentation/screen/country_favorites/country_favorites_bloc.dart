import 'dart:async';

import 'package:elinext_test_task/domain/interactor/country_favourites_interactor.dart';
import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';
import 'package:elinext_test_task/presentation/utils/const.dart';

import 'country_favorites_event.dart';
import 'country_favorites_mapper.dart';

abstract class CountryFavoritesBloc {
  Stream<dynamic>? get countryFavorites;

  Sink<CountryFavoritesEvent>? get countryFavoritesEventSink;

  StreamSink<dynamic>? get _inCountryFavorites;

  init();

  void dispose();
}

class CountryFavoritesBlocImpl extends CountryFavoritesBloc {
  final CountryFavoritesInteractor _countryFavoritesInteractor;

  final CountryFavoritesViewMapper _viewMapper;

  final list = <CountryTile>[];

  final _countryStateController = StreamController<dynamic>();

  final _countryEventController = StreamController<CountryFavoritesEvent>();

  @override
  StreamSink<dynamic> get _inCountryFavorites => _countryStateController.sink;

  @override
  Stream<dynamic> get countryFavorites => _countryStateController.stream;

  @override
  Sink<CountryFavoritesEvent> get countryFavoritesEventSink =>
      _countryEventController.sink;

  CountryFavoritesBlocImpl(this._countryFavoritesInteractor, this._viewMapper) {
    _countryEventController.stream.listen(_mapEventToState);
    init();
  }

  @override
  init() async {
    final dbList = await _countryFavoritesInteractor
        .getNews(list.length + C.DEFAULT_COUNT_NEWS);

    list.clear();
    list.addAll(
      _viewMapper.toItemList(dbList),
    );

    _inCountryFavorites.add(list);
  }

  void _mapEventToState(CountryFavoritesEvent event) {
    if (event is OnCountryFavoritesRefresh) {
      init();
    }
  }

  @override
  void dispose() {
    _countryStateController.close();
    _countryEventController.close();
  }
}
