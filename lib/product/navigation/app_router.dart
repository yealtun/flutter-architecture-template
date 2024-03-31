import 'package:auto_route/auto_route.dart';

import 'package:flutter_architecture_template/feature/home/screen/home_detail_screen.dart';
import 'package:flutter_architecture_template/feature/home/screen/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()

/// Project router information class.
final class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: HomeDetailRoute.page,
        ),
      ];
}
