class C {
  C._();

  ///region main
  static const _API_KEY = 'cc80e044a56a4816a51722e1c8a0f34c';
  static const WEB_URL = 'https://newsapi.org/';

  ///region country
  static const _V2 = 'v2/';

  static String getCountry(int page) =>
      WEB_URL +
      _V2 +
      'top-headlines?country=us&pageSize=$page&apiKey=' +
      _API_KEY;

  ///region database
  static const TABLE_COUNTRY = 'country';
}
