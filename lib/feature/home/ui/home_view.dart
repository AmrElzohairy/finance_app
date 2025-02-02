import 'package:finance_app/core/widgets/spacing.dart';
import 'package:finance_app/feature/home/ui/widgets/custom_coursal.dart';
import 'package:finance_app/feature/home/ui/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'home_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeightSpace(20),
                HomeHeader(),
                HeightSpace(24),
                CustomCoursal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
