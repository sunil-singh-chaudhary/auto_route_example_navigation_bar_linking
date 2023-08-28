import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                context.router.push(const DashBoardRoute());
              },
              child: const Text('Go to Dashboard'))),
    );
  }
}
