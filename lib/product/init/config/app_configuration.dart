/// it is an interface class for app configuration
abstract interface class AppConfiguration{
  /// it using from base url
  String get baseUrl;
  /// it using from api key
  String get apiKey;

  String get test;
}