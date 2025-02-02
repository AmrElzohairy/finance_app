import 'package:finance_app/core/themes/app_assets.dart';
import 'package:finance_app/core/widgets/back_button.dart';
import 'package:finance_app/core/widgets/spacing.dart';
import 'package:finance_app/feature/otp/ui/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              PrimayButtonWidget(
                onPress: () {
                  Navigator.pushNamed(context, OtpView.routeName);
                },
                buttonText: 'Login',
              ),
              HeightSpace(15),
              OrLoginWith(),
              HeightSpace(22),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 56,
                      width: 105,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(Assets.imagesFacebook),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 56,
                      width: 105,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(Assets.imagesGoogle),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 56,
                      width: 105,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE8ECF4)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(Assets.imagesApple),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          color: Color(0xFF617AFD),
                          fontSize: 15,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          height: 1.40,
                          letterSpacing: 0.15,
                        ),
                      ),
                      TextSpan(
                        text: 'Register Now',
                        style: TextStyle(
                          color: Color(0xFF202854),
                          fontSize: 15,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
