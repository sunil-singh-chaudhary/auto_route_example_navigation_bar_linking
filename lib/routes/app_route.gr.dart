// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route_example/screens/dashboard.dart' as _i1;
import 'package:auto_route_example/screens/navigation_profile.dart' as _i2;
import 'package:auto_route_example/screens/posts.dart' as _i3;
import 'package:auto_route_example/screens/screenB.dart' as _i4;
import 'package:auto_route_example/screens/settings.dart' as _i5;
import 'package:auto_route_example/screens/users.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBoard(),
      );
    },
    NavigationProfileScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavigationProfileScreen(),
      );
    },
    PostsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Posts(),
      );
    },
    ScreenBRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ScreenB(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Settings(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Users(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoard]
class DashBoardRoute extends _i7.PageRouteInfo<void> {
  const DashBoardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavigationProfileScreen]
class NavigationProfileScreenRoute extends _i7.PageRouteInfo<void> {
  const NavigationProfileScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NavigationProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationProfileScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Posts]
class PostsRoute extends _i7.PageRouteInfo<void> {
  const PostsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ScreenB]
class ScreenBRoute extends _i7.PageRouteInfo<void> {
  const ScreenBRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ScreenBRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScreenBRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Settings]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Users]
class UsersRoute extends _i7.PageRouteInfo<void> {
  const UsersRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
