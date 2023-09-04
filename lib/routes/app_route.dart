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
              //THis is important for showing a screen inside a tab so tab also visible like fragment in android
              //by creating a new class UserSettingScreen extends AutoRouter {} and wrap it with below code
              AutoRoute(
                  path: 'userpath',
                  page: UserTabScreenRoute.page,
                  //IMPORTANT-> create a class for fragment type work  fro one tab one UserSettingScreen fro all
                  // children because it is inside user screen
                  children: [
                    AutoRoute(page: UsersRoute.page, initial: true),
                    AutoRoute(page: DashBoardRoute.page, path: 'dashboard'),
                    AutoRoute(
                        page: DashbordDetailsRoute.page,
                        path: 'dashdetais',
                        children: [
                          AutoRoute(
                            page: LoreumDetailsPageRoute.page,
                            initial: true,
                          )
                        ]),
                  ]),

              AutoRoute(path: 'posts', page: PostsRoute.page), //post tab
              AutoRoute(
                  path: 'settings', page: SettingsRoute.page), //setting tab
            ]),

        /// ohter routes go here
      ];
}
