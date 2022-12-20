import 'dart:async';

import 'package:elinext_test_task/domain/interactor/country_interactor.dart';
import 'package:elinext_test_task/presentation/utils/const.dart';

import 'country_event.dart';
import 'country_view_mapper.dart';
import 'tile/country_tile.dart';

abstract class CountryBloc {
  StreamSink<dynamic> get _inCountry;

  Stream<dynamic> get country;

  Sink<CountryEvent> get countryEventSink;

  void dispose();
}

class CountryBlocImpl extends CountryBloc {
  final CountryInteractor _countryInteractor;

  final CountryViewMapper _viewMapper;

  final list = <CountryTile>[];

  final _countryStateController = StreamController<dynamic>();

  final _countryEventController = StreamController<CountryEvent>();

  @override
  StreamSink<dynamic> get _inCountry => _countryStateController.sink;

  @override
  Stream<dynamic> get country => _countryStateController.stream;

  @override
  Sink<CountryEvent> get countryEventSink => _countryEventController.sink;

  CountryBlocImpl(this._countryInteractor, this._viewMapper) {
    _countryEventController.stream.listen(_mapEventToState);
    _getCountryNews();
  }

  _getCountryNews() async {
    final countryNews = await _countryInteractor
        .loadCountryNews(list.length + C.DEFAULT_COUNT_NEWS);

    list.clear();
    list.addAll(
      _viewMapper.toItemList(countryNews),
    );

    _inCountry.add(list);
  }

  void _mapEventToState(CountryEvent event) {
    if (event is OnCountryRefresh) {
      _getCountryNews();
    }
  }

  @override
  void dispose() {
    _countryStateController.close();
    _countryEventController.close();
  }
}
