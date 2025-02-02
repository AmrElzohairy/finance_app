import 'package:finance_app/core/themes/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: ClipOval(child: Image.asset(Assets.imagesBgImage)),
      title: Text(
        "welcome back",
        style: AppStyles.grey12MediumStyle.copyWith(fontSize: 13.sp),
      ),
      subtitle: Text("Amr Ahmed", style: AppStyles.black18BoldStyle),
      trailing: Icon(Icons.notifications, color: AppColors.primaryColor),
    );
  }
}
