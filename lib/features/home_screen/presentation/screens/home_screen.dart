import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/svg_image/svg_image.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_extensions.dart';
import 'package:task1/core/utils/app_strings.dart';
import 'package:task1/core/utils/app_textstyles.dart';
import 'package:task1/features/home_screen/presentation/widgets/home_appbar.dart';
import 'package:task1/features/layout/presentation/widgets/custom_appbar.dart';

import '../widgets/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _homeAppBar(),
      ),
    );
  }
}

CustomAppbar _homeAppBar() {
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
      AppSvgImage(
        image: IconAssets.notification,
        height: 45.h,
        width: 45.w,
      ),
      SizedBox(width: 10.w),
      AppSvgImage(image: IconAssets.menu, height: 45.h, width: 45.w),
    ],
  );
}
