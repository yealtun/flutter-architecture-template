import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';


/// Application environment manager class
final class AppEnvironment {

  /// Setup application environment
  AppEnvironment.setup({ required AppConfiguration config}){
    _config = config;
  }
  /// General application environment setup
  AppEnvironment.general(){
    _config = !kDebugMode ? DevEnv() : ProdEnv();
  }
      
  static late final AppConfiguration _config;

 
}
/// Application environment items 
enum AppEnvironmentItems {
  /// Network base url
  baseUrl,
  /// Api key
  test,
  apiKey;
  /// Get application environment value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
        case AppEnvironmentItems.test:
          return AppEnvironment._config.test;
      }
      
    } catch (e) {
      throw Exception('AppEnvironmentItems: $this not found');
    }
  }
}