import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/feature/home/screen/mixin/home_screen_mixin.dart';
import 'package:flutter_architecture_template/product/init/config/app_environment.dart';
import 'package:flutter_architecture_template/product/init/language/locale_keys.g.dart';
import 'package:flutter_architecture_template/product/init/product_localization.dart';
import 'package:flutter_architecture_template/product/navigation/app_router.dart';
import 'package:flutter_architecture_template/product/utility/enums/locales.dart';
import 'package:gen/gen.dart';

part 'widget/home_app_bar.dart';

@RoutePage()
final class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeScreenMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.home_title).tr(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Assets.images.imgSpace.image(
              package: 'gen',
              width: 200,
              height: 200,
            ),
            Assets.lottie.animSpace.lottie(
              package: 'gen',
              width: 200,
              height: 200,
            ),
            Assets.icons.icTurkey.svg(
              package: 'gen',
              width: 200,
              height: 200,
            ),
            Text(AppEnvironmentItems.test.value),
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
            ElevatedButton(
              onPressed: () {
                context.router.push(HomeDetailRoute(id: 1));
              },
              child: Text("Detay Sayfası").tr(),
            ),
          ],
        ),
      ),
    );
  }
}
