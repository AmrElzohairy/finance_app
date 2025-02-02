import 'package:finance_app/feature/onBoarding/ui/onboarding_view.dart';
import 'package:flutter/material.dart';


Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardingView.routeName:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}