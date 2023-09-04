// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:auto_route_example/routes/accountsetting.dart' as _i8;
import 'package:auto_route_example/screens/dashboard.dart' as _i1;
import 'package:auto_route_example/screens/dashbord_details.dart' as _i2;
import 'package:auto_route_example/screens/loreumDetailsPage.dart' as _i3;
import 'package:auto_route_example/screens/navigation_profile.dart' as _i4;
import 'package:auto_route_example/screens/posts.dart' as _i5;
import 'package:auto_route_example/screens/screenB.dart' as _i6;
import 'package:auto_route_example/screens/settings.dart' as _i7;
import 'package:auto_route_example/screens/users.dart' as _i9;
import 'package:flutter/material.dart' as _i11;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBoard(),
      );
    },
    DashbordDetailsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashbordDetails(),
      );
    },
    LoreumDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoreumDetailsPageRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoreumDetailsPage(
          key: args.key,
          index: args.index,
        ),
      );
    },
    NavigationProfileScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NavigationProfileScreenRouteArgs>(
          orElse: () => const NavigationProfileScreenRouteArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.NavigationProfileScreen(key: args.key),
      );
    },
    PostsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Posts(),
      );
    },
    ScreenBRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ScreenB(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Settings(),
      );
    },
    UserTabScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.UserTabScreen(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Users(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoard]
class DashBoardRoute extends _i10.PageRouteInfo<void> {
  const DashBoardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashbordDetails]
class DashbordDetailsRoute extends _i10.PageRouteInfo<void> {
  const DashbordDetailsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashbordDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashbordDetailsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoreumDetailsPage]
class LoreumDetailsPageRoute
    extends _i10.PageRouteInfo<LoreumDetailsPageRouteArgs> {
  LoreumDetailsPageRoute({
    _i11.Key? key,
    required int index,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          LoreumDetailsPageRoute.name,
          args: LoreumDetailsPageRouteArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'LoreumDetailsPageRoute';

  static const _i10.PageInfo<LoreumDetailsPageRouteArgs> page =
      _i10.PageInfo<LoreumDetailsPageRouteArgs>(name);
}

class LoreumDetailsPageRouteArgs {
  const LoreumDetailsPageRouteArgs({
    this.key,
    required this.index,
  });

  final _i11.Key? key;

  final int index;

  @override
  String toString() {
    return 'LoreumDetailsPageRouteArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i4.NavigationProfileScreen]
class NavigationProfileScreenRoute
    extends _i10.PageRouteInfo<NavigationProfileScreenRouteArgs> {
  NavigationProfileScreenRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          NavigationProfileScreenRoute.name,
          args: NavigationProfileScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NavigationProfileScreenRoute';

  static const _i10.PageInfo<NavigationProfileScreenRouteArgs> page =
      _i10.PageInfo<NavigationProfileScreenRouteArgs>(name);
}

class NavigationProfileScreenRouteArgs {
  const NavigationProfileScreenRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'NavigationProfileScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.Posts]
class PostsRoute extends _i10.PageRouteInfo<void> {
  const PostsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          PostsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ScreenB]
class ScreenBRoute extends _i10.PageRouteInfo<void> {
  const ScreenBRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ScreenBRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScreenBRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Settings]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.UserTabScreen]
class UserTabScreenRoute extends _i10.PageRouteInfo<void> {
  const UserTabScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UserTabScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserTabScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Users]
class UsersRoute extends _i10.PageRouteInfo<void> {
  const UsersRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
