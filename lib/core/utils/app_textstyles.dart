import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_constants.dart';

class AppTextStyles {
  AppTextStyles._();
  static TextStyle style10 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 10.sp,
  );
  static TextStyle style15 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 15.sp,
    color: AppColors.grayColor,
  );
  static TextStyle style16 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 16.sp,
  );
  static TextStyle style12 = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grayColor,
  );
  static TextStyle style24 = TextStyle(
    fontSize: 24.sp,
    color: AppColors.boldTextColor,
  );
  static TextStyle style14gray = TextStyle(
    fontSize: 14.sp,
    color: AppColors.grayColor,
  );




  static TextStyle style14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,

  );
  static TextStyle style14MediumUnderline = TextStyle(
    decoration:   TextDecoration.underline,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,

  );
  static TextStyle style13light = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 13.sp,

  );
}
