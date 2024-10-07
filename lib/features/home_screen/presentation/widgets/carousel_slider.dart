import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../provider/carousal_prrovider/carousal_provider.dart';

class CarouselWithDotsIndicator extends StatelessWidget {
  const CarouselWithDotsIndicator(
      {super.key, this.carouselController, required this.images});

  final List<Widget> images;
  final CarouselSliderController? carouselController;

  @override
  Widget build(BuildContext context) {
    return Consumer<CarousalProvider>(
        builder: (context, carousalProvider, child) {
      return CarouselSlider(
        items: images,
        carouselController: carouselController,
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            carousalProvider.setCurrent(index);
          },
          autoPlay: true,
          aspectRatio: 2.0.h,
          viewportFraction: 1.0.h,
          enlargeCenterPage: true,
        ),
      );
    });
  }
}
