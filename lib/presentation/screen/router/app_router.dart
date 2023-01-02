import 'package:elinext_test_task/presentation/screen/country/country_screen.dart';
import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';
import 'package:elinext_test_task/presentation/screen/country_details/country_details_screen.dart';
import 'package:elinext_test_task/presentation/screen/country_favorites/country_favorites_screen.dart';
import 'package:elinext_test_task/presentation/utils/const.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case C.NAVIGATOR_ROUTER_MAIN:
        return MaterialPageRoute(
          builder: (_) => CountryScreen(
            title: C.ROUTER_MAIN,
          ),
        );
      case C.NAVIGATOR_ROUTER_DETAILS:
        return MaterialPageRoute(
          builder: (_) => CountryDetailsScreen(
            tile: settings.arguments as CountryTile,
            title: C.ROUTER_DETAILS,
          ),
        );
     /* case C.NAVIGATOR_ROUTER_FAVORITES:
        return MaterialPageRoute(
          builder: (_) => CountryFavoritesScreen(
            title: C.ROUTER_FAVORITES,
          ),
        );*/
      default:
        return MaterialPageRoute(
          builder: (_) => CountryScreen(
            title: C.ROUTER_MAIN,
          ),
        );
    }
  }
}
