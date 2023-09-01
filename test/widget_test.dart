import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/screens/navigation_profile.dart';
import 'package:auto_route_example/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:auto_route_example/main.dart';

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the widget has an AppBar with the specified color.

    // Verify that the MaterialApp.router widget is present.
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('NavigationProfile widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(NavigationProfileScreen());
    expect(find.byType(AutoTabsScaffold), findsOneWidget);
  });

  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the MaterialApp.router widget is present.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Simulate navigation to a specific route (replace with your actual route).
    await tester.tap(find.text('Navigate to SomeRoute'));
    await tester.pumpAndSettle();

    // Verify that the new route is displayed.
    expect(find.byType(Users), findsOneWidget);

    // You can add more route-specific tests here.
  });
}
