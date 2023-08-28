import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_route.gr.dart';

final innerRouterKey = GlobalKey<AutoRouterState>();

@RoutePage()
class NavigationProfileScreen extends StatefulWidget {
  const NavigationProfileScreen({super.key});

  @override
  State<NavigationProfileScreen> createState() => _ScreenCState();
}

class _ScreenCState extends State<NavigationProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      key: innerRouterKey,
      routes: const [
        UsersRoute(),
        PostsRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Users', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Posts', icon: Icon(Icons.post_add)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
          ],
        );
      },
    );
  }
}
