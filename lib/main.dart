import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/product/init/language/locale_keys.g.dart';
import 'package:flutter_architecture_template/product/init/product_localization.dart';
import 'package:flutter_architecture_template/product/utility/enums/locales.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(
    ProductLocalization(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(LocaleKeys.home_title).tr(),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(LocaleKeys.hello).tr(),
                  ElevatedButton(
                    onPressed: () {
                      ProductLocalization.updateLanguage(
                        context: context,
                        value: Locales.tr,
                      );
                    },
                    child: Text('tr').tr(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ProductLocalization.updateLanguage(
                        context: context,
                        value: Locales.en,
                      );
                    },
                    child: Text('en').tr(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
