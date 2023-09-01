import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/screens/navigation_profile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  void initState() {
    analytics.setCurrentScreen(screenName: 'Post Screen');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts Page'),
      ),
    );
  }
}
