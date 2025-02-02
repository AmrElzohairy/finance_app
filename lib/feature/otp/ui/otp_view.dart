import 'package:finance_app/feature/otp/ui/widgets/custom_pin_code_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_styles.dart';
import '../../../core/widgets/back_button.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/widgets/spacing.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});
  static const routeName = 'verify-otp';
  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeightSpace(12),
                const BackButtonWidget(),
                const HeightSpace(28),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    "OTP Verification",
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                ),
                const HeightSpace(10),
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppStyles.subtitlesStyles,
                ),
                const HeightSpace(32),
                CustomPinCodeField(pinCodeController: pinCodeController),
                const HeightSpace(38),
                PrimayButtonWidget(buttonText: "Verify", onPress: () {}),
                const Spacer(),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Didn’t received code? ",
                      style: AppStyles.black15BoldStyle.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: "Resend",
                          style: AppStyles.black15BoldStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                const HeightSpace(26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

