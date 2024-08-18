import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../../core/svg_image/svg_image.dart';
import '../../../../core/utils/app_colors.dart';

PersistentBottomNavBarItem navBarItem({
  required String icon,
  RouteAndNavigatorSettings routeAndNavigatorSettings =
      const RouteAndNavigatorSettings(),
}) {
  return PersistentBottomNavBarItem(
    inactiveIcon: AppSvgImage(
      image: icon,
      color: AppColors.grayColor,
      width: 30.w,
      height: 30.h,
      fit: BoxFit.contain,
    ),

    /// add gradient color
    icon: AppSvgImage(
      width: 35.w,
      height: 35.h,
      image: icon,
      color: AppColors.activeColorBar,
      fit: BoxFit.contain,
    ),
    routeAndNavigatorSettings: routeAndNavigatorSettings,
    activeColorPrimary: AppColors.activeColorBar,
    inactiveColorPrimary: AppColors.grayColor,
  );
}
