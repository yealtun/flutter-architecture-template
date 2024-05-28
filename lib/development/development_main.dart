import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/product/init/application_initialize.dart';
import 'package:flutter_architecture_template/product/init/product_localization.dart';
import 'package:flutter_architecture_template/product/init/theme/index.dart';
import 'package:flutter_architecture_template/product/navigation/app_router.dart';
import 'package:widgets/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ApplicationInitialize().make();
  runApp(
    DevicePreview(
      builder: (context) => ProductLocalization(
        child: _MyApp(),
      ),
    ),
  );
}

class _MyApp extends StatelessWidget {
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
