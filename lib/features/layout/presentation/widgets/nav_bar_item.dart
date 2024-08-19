import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../../../core/shared/badge.dart';
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

PersistentBottomNavBarItem navBarItemWithBadge({
  required String icon,
  int badgeCount = 0,
  RouteAndNavigatorSettings routeAndNavigatorSettings =
      const RouteAndNavigatorSettings(),
}) {
  return PersistentBottomNavBarItem(
    // Inactive icon
    inactiveIcon: BadgeIcon(
      icon: icon,
      badgeCount: badgeCount,
    ),

    // Active icon with gradient color
    icon: BadgeIcon(
      icon: icon,
      badgeCount: badgeCount,
    ),
    routeAndNavigatorSettings: routeAndNavigatorSettings,
    activeColorPrimary: AppColors.activeColorBar,
    inactiveColorPrimary: AppColors.grayColor,
  );
}
