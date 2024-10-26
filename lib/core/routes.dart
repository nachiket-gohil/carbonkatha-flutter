import 'package:carbo2/screens/home/fashion_category.dart';
import 'package:carbo2/screens/home/food_category.dart';
import 'package:carbo2/screens/home/tech_category.dart';
import 'package:carbo2/screens/home/transport_category.dart';
import 'package:carbo2/screens/onboarding/questions.dart';
import 'package:carbo2/screens/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import '../screens/offset/investment_details.dart';
import '../screens/offset/project_details.dart';
import '../screens/onboarding/onboard_screen.dart';
import '../screens/transaction/account_aggregator.dart';
import '../screens/transaction/credit_card.dart';

class OneRoute {
  static const String onboarding_screen = "/";
  static const String quesions = "/questions";
  static const String transaction = "/transaction";
  static const String main_screen = "/main_screen";

  static const String food_category = "/food_category";
  static const String fashion_category = "/fashion_category";
  static const String transport_category = "/transport_category";
  static const String tech_category = "/tech_category";

  static const String project_details = "/project_details";
  static const String investment_details = "/investment_details";

  static const String account_aggregator = "/account_aggregator";
  static const String credit_card = "/credit_card";

  static String currentRouteName = "";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final args = settings.arguments;
    currentRouteName = settings.name ?? "";

    switch (settings.name) {
      case onboarding_screen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case quesions:
        return MaterialPageRoute(builder: (_) => const Questions());
      case transaction:
        return MaterialPageRoute(builder: (_) => const TransactionsScreen());
      case main_screen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case food_category:
        return MaterialPageRoute(builder: (_) => const FoodCategory());
      case fashion_category:
        return MaterialPageRoute(builder: (_) => const FashionCategory());
      case transport_category:
        return MaterialPageRoute(builder: (_) => const TransportCategory());
      case tech_category:
        return MaterialPageRoute(builder: (_) => const TechCategory());
      case project_details:
        return MaterialPageRoute(builder: (_) => const ProjectDetails());
      case investment_details:
        return MaterialPageRoute(builder: (_) => const InvestmentDetails());
      case account_aggregator:
        return MaterialPageRoute(builder: (_) => const AccountAggregator());
      case credit_card:
        return MaterialPageRoute(builder: (_) => const CreditCard());

      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: const Text("Error 404"),
          content: const Text("Some Problem Occurred...\nPlease Try Again"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
