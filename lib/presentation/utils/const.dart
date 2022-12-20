class C {
  C._();

  ///region database
  static const DATABASE_NAME = 'news_database.db';
  static const TABLE_COUNTRY = 'country';
  static const TABLE_COUNTRY_SOURCE_ID = 'source_id';
  static const TABLE_COUNTRY_SOURCE_NAME = 'source_name';
  static const TABLE_COUNTRY_AUTHOR = 'author';
  static const TABLE_COUNTRY_TITLE = 'title';
  static const TABLE_COUNTRY_DESCRIPTION = 'description';
  static const TABLE_COUNTRY_URL = 'url';
  static const TABLE_COUNTRY_URL_TO_IMAGE = 'urlToImage';
  static const TABLE_COUNTRY_PUBLISHED_AT = 'publishedAt';
  static const TABLE_COUNTRY_CONTENT = 'content';


  static const TABLE_INIT = 'CREATE TABLE ' +
      C.TABLE_COUNTRY +
      ' (id INTEGER PRIMARY KEY, ' +
      C.TABLE_COUNTRY_SOURCE_ID + ' TEXT, ' +
      C.TABLE_COUNTRY_SOURCE_NAME + ' TEXT, ' +
      C.TABLE_COUNTRY_AUTHOR + ' TEXT, ' +
      C.TABLE_COUNTRY_TITLE + ' TEXT, ' +
      C.TABLE_COUNTRY_DESCRIPTION + ' TEXT, ' +
      C.TABLE_COUNTRY_URL + ' TEXT, ' +
      C.TABLE_COUNTRY_URL_TO_IMAGE + ' TEXT, ' +
      C.TABLE_COUNTRY_PUBLISHED_AT + ' TEXT, ' +
      C.TABLE_COUNTRY_CONTENT + ' TEXT)';

  ///region page
  static const DEFAULT_COUNT_NEWS = 5;

  ///app
  static const APP_NAME = 'Elinext test task';
  static const EMPTY = 'Empty';

  ///router title
  static const ROUTER_MAIN = 'Main';
  static const ROUTER_DETAILS = 'Details';
  static const ROUTER_FAVORITES = 'Favorites';

  ///router navigator
  static const NAVIGATOR_ROUTER_MAIN = '/';
  static const NAVIGATOR_ROUTER_DETAILS = '/CountryDetails';
  static const NAVIGATOR_ROUTER_FAVORITES = '/CountryFavorites';
}
