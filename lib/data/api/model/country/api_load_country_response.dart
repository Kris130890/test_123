class PokemonListName {
  final count;
  final next;
  Null previous;
  List<PokemonsResultsList>? results;

  PokemonListName(this.count, this.next, this.previous, this.results, Map<String, dynamic> json,);

  PokemonListName? fromJson(Map<String, dynamic> json) {
    final count = json['count'];
    final next = json['next'];
    final previous = json['previous'];
    return PokemonListName(
      count,
      next,
      previous,
      results == null
          ? null
          : PokemonsResultsList.fromJson(results),
      json,
    );
  }
}

class PokemonsResultsList {
  final name;
  final url;

  PokemonsResultsList({this.name, this.url});

  PokemonsResultsList? fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'];
  }
}
