import 'package:finance_app/core/themes/app_assets.dart';
import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/widgets/primary_outline.dart';
import 'package:finance_app/core/widgets/spacing.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Assets.imagesBgImage),
          HeightSpace(20),
          PrimayButtonWidget(onPress: () {}, buttonText: "Login"),
          HeightSpace(20),
          PrimayOutlinedButtonWidget(onPress: () {}, buttonText: "Register"),
          HeightSpace(46),
          Text(
            'Continue as a guest',
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color(0xFF202854),
              fontSize: 15,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
