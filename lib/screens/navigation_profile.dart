import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import '../routes/app_route.gr.dart';

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

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
    trackNavigation('NavigationScreen', 'Navigation');
    analytics.setCurrentScreen(screenName: 'NavScreen');

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

//TODO : important when [clicking] on same tab again then it will
//TODO : remove all inside page of it and come to on first page
  void navigateToTabAndClearStack(int tabIndex) {
    switch (tabIndex) {
      case 0: // Users tab
        analytics.logEvent(
          name: 'User_Tab',
          parameters: <String, dynamic>{
            'usertab': 'clicked',
          },
        );
        _clearStackNnavigattoUserPage(); //double click on same tab
        break;
      case 1: // Posts tab
        analytics.logEvent(
          name: 'Post_Tab',
          parameters: <String, dynamic>{
            'postTab': 'clicked',
          },
        );
        widget._router
            .push(const PostsRoute()); // Navigate to the initial page of Posts

        break;
      case 2: // Settings tab
        analytics.logEvent(
          name: 'Setting_Tab',
          parameters: <String, dynamic>{
            'settingtab': 'clicked',
          },
        );
        widget._router.push(const SettingsRoute());
        // Navigate to the initial page of Settings

        break;
    }
  }

  void _clearStackNnavigattoUserPage() {
    AutoRouter.of(context).removeUntil((route) {
      // Your condition to determine when to stop removing routes.
      // For example, you can check if the route is the UserPage or a specific route.
      debugPrint('route.name== ${route.name}');
      return route.name == '/NavigationProfileScreenRoute';
    });

    Future.delayed(const Duration(milliseconds: 100), () {
      //clear all stack and navigate to user page
      widget._router.push(const UsersRoute());
    });
  }

  void trackNavigation(String screenName, String screenClassOverride) {
    debugPrint('started tracking');
    analytics.setCurrentScreen(
      screenName: screenName,
      screenClassOverride: screenClassOverride,
    );
  }
}
