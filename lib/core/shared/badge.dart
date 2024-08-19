import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../svg_image/svg_image.dart';
import '../utils/app_colors.dart';

class BadgeIcon extends StatelessWidget {
  final String icon;
  final int badgeCount;

  const BadgeIcon({
    super.key,
    required this.icon,
    this.badgeCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(
        badgeColor: AppColors.activeColorBar,
      ),
      badgeContent: Text(
        badgeCount > 99 ? '99+' : badgeCount.toString(),
        style: const TextStyle(color: Colors.black, fontSize: 10),
      ),
      position: BadgePosition.custom(
        top: -2,
        start: 12,
        isCenter: false,
      ),
      child: AppSvgImage(
        image: icon,
        color: AppColors.grayColor,
        width: 30.w,
        height: 30.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
