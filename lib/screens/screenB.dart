import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/routes/app_route.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(NavigationProfileScreenRoute());
                },
                child: const Text('SCREEN B '))),
      ),
    );
  }
}
