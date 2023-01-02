/*import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';

abstract class CountryFavoritesViewMapper {
  List<CountryTile> toItemList(Country country);
}

class CountryFavoritesViewMapperImpl implements CountryFavoritesViewMapper {
  @override
  List<CountryTile> toItemList(Country country) {
    final list = <CountryTile>[];

    country.articles?.forEach(
      (element) {
        list.add(
          CountryTile(
            source: CountrySourceTile(
              id: element.source?.id,
              name: element.source?.name,
            ),
            author: element.author,
            title: element.title,
            description: element.description,
            url: element.url,
            urlToImage: element.urlToImage,
            publishedAt: element.publishedAt,
            content: element.content,
          ),
        );
      },
    );

    return list;
  }
}*/
