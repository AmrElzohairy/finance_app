import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/feature/home/ui/widgets/card_iiem.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/spacing.dart';

class CustomCoursal extends StatefulWidget {
  const CustomCoursal({super.key});

  @override
  State<CustomCoursal> createState() => _CustomCoursalState();
}

class _CustomCoursalState extends State<CustomCoursal> {
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 426 / 287,
            viewportFraction: 0.7,
            padEnds: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.25,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: [CardIiem(), CardIiem(), CardIiem()],
        ),
        HeightSpace(10),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
