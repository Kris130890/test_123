import 'package:elinext_test_task/domain/model/country/country.dart';

class CountryTile extends Pokemon {
  final String? name;
  final String? url;

  CountryTile({
    this.name,
    this.url,
  }) : super(
    results: [
      PokemonResults(
              name: name,
              url: url,
            ),
          ],
        );
}

class PokemonSourceTile {
  final String? url;
  final String? name;

  PokemonSourceTile({
    this.url,
    this.name,
  });
}
