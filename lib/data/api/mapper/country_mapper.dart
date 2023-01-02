import 'package:elinext_test_task/data/api/model/country/api_load_country_response.dart';
import 'package:elinext_test_task/domain/model/country/country.dart';

class CountryMapper {
  static Pokemon toCountry(PokemonListName response) {
    final data = response;
    final list = <PokemonResults>[];
    response.results?.forEach((element) {
      list.add(
        PokemonResults(
        name: element.name,
        url: element.url,
        ),
      );
    });
    return Pokemon(
      count: data.count,
      next: data.next,
      results: list,
    );
  }
}
