import 'package:elinext_test_task/domain/model/country/country.dart';
import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';

import 'tile/country_details_tile.dart';

abstract class CountryDetailsViewMapper {
  CountryDetailsTile toCountryDetailsTile(
    CountryArticles dbArticles,
    CountryTile? tile,
  );
}

class CountryDetailsViewMapperImpl implements CountryDetailsViewMapper {
  @override
  CountryDetailsTile toCountryDetailsTile(
    CountryArticles dbArticles,
    CountryTile? tile,
  ) {
    var tileNews = CountryDetailsTile();

    if (dbArticles == null || dbArticles.title == null) {
      tileNews = CountryDetailsTile(
        source: tile?.source,
        author: tile?.author,
        title: tile?.title,
        description: tile?.description,
        url: tile?.url,
        urlToImage: tile?.urlToImage,
        publishedAt: tile?.publishedAt,
        content: tile?.content,
        isFavourite: false,
      );
    } else {
      tileNews = CountryDetailsTile(
        source: CountrySourceTile(
          id: dbArticles?.source?.id,
          name: dbArticles?.source?.name,
        ),
        author: dbArticles?.author,
        title: dbArticles?.title,
        description: dbArticles?.description,
        url: dbArticles?.url,
        urlToImage: dbArticles?.urlToImage,
        publishedAt: dbArticles?.publishedAt,
        content: dbArticles?.content,
        isFavourite: true,
      );
    }

    return tileNews;
  }
}
