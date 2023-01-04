/*import 'dart:async';

import 'package:elinext_test_task/domain/interactor/country_details_interactor.dart';
import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'country_details_event.dart';
import 'country_details_view_mapper.dart';
import 'tile/country_details_tile.dart';

abstract class CountryDetailsBloc {
  Sink<CountryDetailsEvent> get countryDescriptionEventSink;

  StreamSink<dynamic> get _inCountryDetails;

  Stream<dynamic> get countryDetails;

  void init(CountryTile tile);

  void dispose();
}

class CountryDetailsBlocImpl extends CountryDetailsBloc {
  final CountryDetailsInteractor _countryDetailsInteractor;

  final CountryDetailsViewMapper _detailsViewMapper;

  var tileNews = CountryDetailsTile();

  final _countryStateController = StreamController<dynamic>();

  final _countryEventController = StreamController<CountryDetailsEvent>();

  @override
  Sink<CountryDetailsEvent> get countryDescriptionEventSink =>
      _countryEventController.sink;

  @override
  Stream<dynamic> get countryDetails => _countryStateController.stream;

  @override
  StreamSink<dynamic> get _inCountryDetails => _countryStateController.sink;

  CountryDetailsBlocImpl(
      this._countryDetailsInteractor, this._detailsViewMapper) {
    _countryEventController.stream.listen(_mapEventToState);
  }

  @override
  init(CountryTile? tile) async {
    final dbArticles =
        await _countryDetailsInteractor.getNews(tile?.title ?? '');
    tileNews = _detailsViewMapper.toCountryDetailsTile(dbArticles, tile);
    _inCountryDetails.add(tileNews);
  }

  void _mapEventToState(CountryDetailsEvent event) {
    if (event is OpenCountryDetailsNews) {
      _launchURL(event.url);
    } else if (event is Init) {
      init(event.tile);
    } else if (event is Favourite) {
      _changeDataInDb(event.isFavourite);
    }
  }

  _changeDataInDb(bool isFavourite) async {
    if (isFavourite) {
      await _countryDetailsInteractor.deleteNews(tileNews.title ?? '');
      tileNews.isFavourite = false;
    } else {
      await _countryDetailsInteractor.insertNews(tileNews);
      tileNews.isFavourite = true;
    }
    _inCountryDetails.add(tileNews);
  }

  @protected
  _launchURL(
    String? url,
  ) async {
    final isCanLaunch = await canLaunch(url ?? '');
    if (isCanLaunch) {
      await launch(url ?? '');
    }
  }

  @override
  Future<void> dispose() async {
    _countryEventController.close();
    _countryStateController.close();
  }
}*/
