import 'package:elinext_test_task/presentation/screen/country/tile/country_tile.dart';

class CountryDetailsTile extends CountryTile {
  bool? isFavourite;

  CountryDetailsTile({
    source,
    author,
    title,
    description,
    url,
    urlToImage,
    publishedAt,
    content,
    this.isFavourite,
  }) : super(
          source: source,
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
        );
}
