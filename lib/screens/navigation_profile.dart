import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_route.gr.dart';

@RoutePage()
class NavigationProfileScreen extends StatefulWidget {
  NavigationProfileScreen({super.key});
  late StackRouter _router;
  @override
  State<NavigationProfileScreen> createState() => _ScreenCState();
}

class _ScreenCState extends State<NavigationProfileScreen> {
  @override
  void initState() {
    widget._router = AutoRouter.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        UsersRoute(),
        PostsRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (tabsRouter.activeIndex == index) {
              navigateToTabAndClearStack(index);
            } else {
              tabsRouter.setActiveIndex(index);
            }
          },
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

//TODO important when [clicking] on same tab again then it will
//TODO remove all inside page of it and come to on first page
  void navigateToTabAndClearStack(int tabIndex) {
    widget._router.popUntilRoot(); // Clear the navigation stack
    switch (tabIndex) {
      case 0: // Users tab
        widget._router
            .push(const UsersRoute()); // Navigate to the initial page of Users
        break;
      case 1: // Posts tab
        widget._router
            .push(const PostsRoute()); // Navigate to the initial page of Posts
        break;
      case 2: // Settings tab
        widget._router.push(const SettingsRoute());
        // Navigate to the initial page of Settings
        break;
    }
  }
}
