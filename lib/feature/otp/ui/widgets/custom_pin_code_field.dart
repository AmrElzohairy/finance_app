import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';

class CustomPinCodeField extends StatelessWidget {
  const CustomPinCodeField({
    super.key,
    required this.pinCodeController,
  });

  final TextEditingController pinCodeController;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      controller: pinCodeController,
      obscureText: false,
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      textStyle: AppStyles.primaryHeadLinesStyle.copyWith(
        fontSize: 22.sp,
      ),
      pinTheme: PinTheme(
        fieldWidth: 70.w,
        fieldHeight: 60.h,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8.r),
        selectedColor: AppColors.primaryColor,
        selectedFillColor: AppColors.whiteColor,
        activeColor: AppColors.primaryColor,
        activeFillColor: AppColors.whiteColor,
        inactiveColor: AppColors.greyColor,
        inactiveFillColor: AppColors.greyColor.withValues(
          alpha: 0.1,
        ),
        borderWidth: 1,
      ),
    );
  }
}
