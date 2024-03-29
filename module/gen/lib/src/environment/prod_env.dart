import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'prod_env.g.dart';

@Envied(
    path: 'assets/env/.prod.env',
  obfuscate: true,
)
/// prod environment variables
final class ProdEnv implements AppConfiguration{
  
    @EnviedField(varName: 'BASE_URL')
    /// Base url
    final String _baseUrl = _ProdEnv._baseUrl;
    @override
    String get baseUrl => _baseUrl;


    @EnviedField(varName: 'API_KEY')
    /// API key
    final String _apiKey = _ProdEnv._apiKey;
    @override
    String get apiKey => _apiKey;

    @EnviedField(varName: 'TEST')
    /// API key
    final String _test = _ProdEnv._test;
    @override
    String get test => _test;
}
