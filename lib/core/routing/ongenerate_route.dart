
import 'package:finance_app/feature/auth/presentation/ui/login_view.dart';
import 'package:finance_app/feature/main/main_view.dart';
import 'package:finance_app/feature/onBoarding/ui/onboarding_view.dart';
import 'package:finance_app/feature/otp/ui/otp_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case OtpView.routeName:
      return MaterialPageRoute(builder: (context) => const OtpView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
