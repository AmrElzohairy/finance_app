
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:finance_app/core/widgets/spacing.dart';
import 'package:flutter/material.dart';


class OtpView extends StatelessWidget {
  const OtpView({super.key});
  static const routeName = 'otp';
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
                  'Verify OTP',
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
            ],
          ),
        ),
      ),
    );
  }
}
