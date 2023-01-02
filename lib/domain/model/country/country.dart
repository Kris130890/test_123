import 'package:flutter/cupertino.dart';

class Pokemon {
  final int? count;
  final String? next;
  Null previous;
  final List<PokemonResults>? results;

  Pokemon({
    this.count,
    this.next,
    @required this.results,
  });
}

class PokemonResults {
  final String? name;
  final String? url;

  PokemonResults({
    this.name,
    this.url,
  });
}
