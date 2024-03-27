import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/product/init/config/app_environment.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

/// This class is used to initialize the application process.
final class ApplicationInitialize {


  /// Project basic required initialize
  Future<void> make() async {
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error.toString());
    });
  }

  /// This method is used to initialize the application process.
  static Future<void> _initialize() async {

    /// i18n initialize
    await EasyLocalization.ensureInitialized();


    /// Todo : Splash screen
    await DeviceUtility.instance.initPackageInfo();

    /// Error handling
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.dumpErrorToConsole(details);

      /// Crashlytics record error
      /// custom service
      /// Todo : add custom logger
      Logger().e(details.exception.toString());

      /// Dependency initialize
      /// envied
    };

    /// App environment initialize
    AppEnvironment.general();
  }
}
