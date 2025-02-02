import 'package:finance_app/core/themes/app_assets.dart';
import 'package:finance_app/core/themes/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/widgets/primary_outline.dart';
import 'package:finance_app/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Assets.imagesBgImage,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          HeightSpace(20),
          PrimayButtonWidget(onPress: () {}, buttonText: "Login"),
          HeightSpace(20),
          PrimayOutlinedButtonWidget(onPress: () {}, buttonText: "Register"),
          HeightSpace(46),
          Text(
            'Continue as a guest',
            textAlign: TextAlign.center,
            style: AppStyles.black15BoldStyle.copyWith(
              decoration: TextDecoration.underline,
              color: Color(0xFF202854),
            ),
          ),
        ],
      ),
    );
  }
}
