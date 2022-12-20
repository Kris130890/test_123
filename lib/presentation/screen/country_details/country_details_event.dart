import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';

abstract class CountryDetailsEvent {}

class OpenCountryDetailsNews extends CountryDetailsEvent {
  final String? url;

  OpenCountryDetailsNews(this.url);
}

class Init extends CountryDetailsEvent {
  final CountryTile? tile;

  Init(this.tile);
}

class Favourite extends CountryDetailsEvent {
  final isFavourite;

  Favourite(this.isFavourite);
}
