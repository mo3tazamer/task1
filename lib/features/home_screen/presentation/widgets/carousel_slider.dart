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
      return Stack(
        children: [
          CarouselSlider(
            items: images,
            carouselController: carouselController,
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                carousalProvider.setCurrent(index);
              },
              autoPlay: true,
              viewportFraction: 1.0,
              //aspectRatio: 2.9.h,
              enlargeCenterPage: true,
              height: 120.h,
            ),
          ),
          // Positioned(
          //   bottom: 10.h,
          //   right: 1.w,
          //   left: 1.w,
          //   child: DotsIndicator(
          //     dotsCount: images.length,
          //     position: carousalProvider.current,
          //     decorator: DotsDecorator(
          //       color: Colors.grey,
          //       activeColor: Colors.black,
          //       activeShape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(5.0)),
          //       size: const Size.square(9.0),
          //       activeSize: const Size(18.0, 9.0),
          //     ),
          //   ),
          // )
        ],
      );
    });
  }
}
