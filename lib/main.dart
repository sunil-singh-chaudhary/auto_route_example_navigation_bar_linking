import 'package:auto_route_example/routes/app_route.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/navigation_profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  analytics.logEvent(
    name: 'test_event',
    parameters: {'param_key': 'param_value'},
  );
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
