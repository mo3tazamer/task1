import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:task1/core/shared/icon_botton.dart';
import 'package:task1/core/svg_image/svg_image.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_extensions.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/core/utils/app_textstyles.dart';

import '../../../../core/shared/app_search_bar.dart';

import '../widgets/best_selling.dart';
import '../widgets/carousel_slider.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/exclusive_offer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();

    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (FocusScope.of(context).hasFocus) {
        FocusScope.of(context).unfocus();
      }
    });

    super.initState();
  }

  final List images = [
    ImagesAssets.banner,
    ImagesAssets.banner,
    ImagesAssets.banner,
    ImagesAssets.banner,
    ImagesAssets.banner,
    ImagesAssets.banner,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _homeAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSearchBar(
                  focusNode: _focusNode,
                ),
                Flexible(
                  child: CarouselWithDotsIndicator(
                    images: images
                        .map((item) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: Image.asset(
                                    item,
                                    fit: BoxFit.fitHeight,
                                  ).image,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Expanded(child: ExclusiveOffer()),
                const Expanded(child: BestSelling()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

CustomAppbar _homeAppBar(context) {
  return CustomAppbar(
    leading: IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: CircleAvatar(
              radius: 26.r,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                radius: 25.r,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.hala,
                    style: AppTextStyles.style14
                        .copyColorWith(AppColors.grayColor),
                  ),
                  Text(
                    AppStrings.logInSignUp,
                    style: AppTextStyles.style14MediumUnderline
                        .copyColorWith(AppColors.grayColor),
                  ),
                ],
              ),
              Text(
                AppStrings.riyadhSaudiArabia,
                style: AppTextStyles.style13light
                    .copyColorWith(AppColors.grayColor),
              )
            ],
          )
        ],
      ),
    ),
    automaticallyImplyLeading: false,
    actions: [
      AppIconBotton(
        icon: AppSvgImage(
          image: IconAssets.notification,
          height: 45.h,
          width: 45.w,
        ),
        onPressed: () {},
      ),
      SizedBox(width: 10.w),
      AppIconBotton(
        icon: AppSvgImage(image: IconAssets.menu, height: 45.h, width: 45.w),
        onPressed: () {},
      ),
    ],
  );
}
