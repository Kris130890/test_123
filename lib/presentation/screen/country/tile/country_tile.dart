import 'package:elinext_test_task/domain/model/country/country.dart';

class CountryTile extends Country {
  final CountrySourceTile? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  CountryTile({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  }) : super(
          articles: [
            CountryArticles(
              source: CountryArticlesSource(
                id: source?.id,
                name: source?.name,
              ),
              author: author,
              title: title,
              description: description,
              url: url,
              urlToImage: urlToImage,
              publishedAt: publishedAt,
              content: content,
            ),
          ],
        );
}

class CountrySourceTile {
  final String? id;
  final String? name;

  CountrySourceTile({
    this.id,
    this.name,
  });
}
