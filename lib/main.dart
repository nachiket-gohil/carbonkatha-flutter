import 'package:carbo2/screens/onboarding/onboard_screen.dart';
import 'package:flutter/material.dart';

import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CarbonKatha',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: OneRoute.onboarding_screen,
      onGenerateRoute: OneRoute.generateRoutes,
      home: const OnboardingScreen(),
    );
  }
}

void checkToken() {
  // Make Return Type WIDGET
  // 1. Fetch Token from Pref
  // 2. If Token Exist
  // 3. Redirect to Main Screen
  // 4. Else
  // 5. Redirect to Onboarding Screen
}
