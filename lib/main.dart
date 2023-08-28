import 'package:auto_route_example/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: Colors.amber,
          elevation: 0,
        )),
        routerConfig: _appRouter.config(), //add this here
      ),
    );
  }
}
