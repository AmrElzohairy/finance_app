import 'package:finance_app/core/widgets/back_button.dart';
import 'package:finance_app/core/widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_button.dart';
import 'widgets/or_login_with.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              HeightSpace(12),
              BackButtonWidget(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back!\n Again!',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF617AFD),
                    fontSize: 30,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    height: 1.30,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
              HeightSpace(32),
              CustomTextField(hintText: 'Enter your email'),
              HeightSpace(15),
              CustomTextField(
                hintText: 'Enter your password',
                isPassword: true,
              ),
              HeightSpace(16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF617AFD),
                    fontSize: 14,
                    fontFamily: 'Urbanist',
                  ),
                ),
              ),
              HeightSpace(15),
              PrimayButtonWidget(onPress: () {}, buttonText: 'Login'),
              HeightSpace(15),
              OrLoginWith(),
            ],
          ),
        ),
      ),
    );
  }
}
