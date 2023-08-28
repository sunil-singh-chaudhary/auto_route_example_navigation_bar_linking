import 'package:auto_route/auto_route.dart';
import 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  // @override
  // RouteType get defaultroutetype => const RouteType.adaptive();
  //for both ios and android can use custom for transition in screen

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: DashBoardRoute.page,
        ),
        AutoRoute(page: ScreenBRoute.page),
        AutoRoute(
            initial: true,
            path: '/NavigationProfileScreenRoute',
            page: NavigationProfileScreenRoute.page,
            children: [
              AutoRoute(path: 'users', page: UsersRoute.page, children: [
                AutoRoute(path: '', page: DashBoardRoute.page),
              ]),
              AutoRoute(path: 'posts', page: PostsRoute.page),
              AutoRoute(path: 'settings', page: SettingsRoute.page),
            ]),

        /// routes go here
      ];
}
