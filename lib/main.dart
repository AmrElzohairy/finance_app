import 'package:finance_app/core/routing/ongenerate_route.dart';
import 'package:finance_app/feature/onBoarding/ui/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          onGenerateRoute: onGenerateRoute,
          initialRoute: OnboardingView.routeName,
          home: child,
        );
      },
      child: OnboardingView(),
    );
  }
}
