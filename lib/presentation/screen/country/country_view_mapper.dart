import 'package:elinext_test_task/domain/model/country/country.dart';

import 'tile/country_tile.dart';

abstract class CountryViewMapper {
  List<CountryTile> toItemList(Pokemon country);
}

class CountryViewMapperImpl implements CountryViewMapper {
  @override
  List<CountryTile> toItemList(Pokemon country) {
    final list = <CountryTile>[];

    country.results?.forEach(
      (element) {
        list.add(
          CountryTile(
            name: element.name,
            url: element.url,
          ),
        );
      },
    );

    return list;
  }
}
