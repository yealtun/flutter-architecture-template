import 'package:envied/envied.dart';
import 'package:flutter_architecture_template/product/init/config/app_configuration.dart';

part 'dev_env.g.dart';

@Envied(
    path: 'assets/env/.dev.env',
  obfuscate: true,
)
/// Dev environment variables
final class DevEnv implements AppConfiguration {
  
    @EnviedField(varName: 'BASE_URL')
    /// Base url
    final String _baseUrl = _DevEnv._baseUrl;
    @override
    String get baseUrl => _baseUrl;

    @EnviedField(varName: 'API_KEY')
    /// API key
    final String _apiKey = _DevEnv._apiKey;
    @override
    String get apiKey => _apiKey;

    @EnviedField(varName: 'TEST')
    /// API key
    final String _test = _DevEnv._test;
    @override
    String get test => _test;
}
