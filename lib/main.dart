import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/feature/home/screen/home_screen.dart';
import 'package:flutter_architecture_template/product/init/application_initialize.dart';
import 'package:flutter_architecture_template/product/init/product_localization.dart';
import 'package:flutter_architecture_template/product/init/theme/index.dart';

import 'product/navigation/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ApplicationInitialize().make();
  runApp(
    ProductLocalization(child: _MyApp()),
  );
}

class _MyApp extends StatelessWidget {

  static final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
