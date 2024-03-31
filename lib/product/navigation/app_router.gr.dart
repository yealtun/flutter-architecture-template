// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeDetailScreen(id: args.id),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeDetailScreen]
class HomeDetailRoute extends PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          HomeDetailRoute.name,
          args: HomeDetailRouteArgs(id: id),
          initialChildren: children,
        );

  static const String name = 'HomeDetailRoute';

  static const PageInfo<HomeDetailRouteArgs> page =
      PageInfo<HomeDetailRouteArgs>(name);
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({required this.id});

  final int id;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{id: $id}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
