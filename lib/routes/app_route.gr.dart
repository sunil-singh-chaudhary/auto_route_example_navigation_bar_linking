// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route_example/routes/accountsetting.dart' as _i6;
import 'package:auto_route_example/screens/dashboard.dart' as _i1;
import 'package:auto_route_example/screens/navigation_profile.dart' as _i2;
import 'package:auto_route_example/screens/posts.dart' as _i3;
import 'package:auto_route_example/screens/screenB.dart' as _i4;
import 'package:auto_route_example/screens/settings.dart' as _i5;
import 'package:auto_route_example/screens/users.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBoard(),
      );
    },
    NavigationProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationProfileScreenRouteArgs>(
          orElse: () => const NavigationProfileScreenRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.NavigationProfileScreen(key: args.key),
      );
    },
    PostsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Posts(),
      );
    },
    ScreenBRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ScreenB(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Settings(),
      );
    },
    UserSettingScreenRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.UserSettingScreen(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Users(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoard]
class DashBoardRoute extends _i8.PageRouteInfo<void> {
  const DashBoardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavigationProfileScreen]
class NavigationProfileScreenRoute
    extends _i8.PageRouteInfo<NavigationProfileScreenRouteArgs> {
  NavigationProfileScreenRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          NavigationProfileScreenRoute.name,
          args: NavigationProfileScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NavigationProfileScreenRoute';

  static const _i8.PageInfo<NavigationProfileScreenRouteArgs> page =
      _i8.PageInfo<NavigationProfileScreenRouteArgs>(name);
}

class NavigationProfileScreenRouteArgs {
  const NavigationProfileScreenRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'NavigationProfileScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.Posts]
class PostsRoute extends _i8.PageRouteInfo<void> {
  const PostsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ScreenB]
class ScreenBRoute extends _i8.PageRouteInfo<void> {
  const ScreenBRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ScreenBRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScreenBRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Settings]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.UserSettingScreen]
class UserSettingScreenRoute extends _i8.PageRouteInfo<void> {
  const UserSettingScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserSettingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSettingScreenRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Users]
class UsersRoute extends _i8.PageRouteInfo<void> {
  const UsersRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
