import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';

class CountryDetailsTile extends CountryTile {
  bool? isFavourite;

  CountryDetailsTile({
    name,
    url,
    this.isFavourite,
  }) : super(
          name: name,
          url: url,
        );
}
