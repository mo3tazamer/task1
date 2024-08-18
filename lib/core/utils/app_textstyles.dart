import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_constants.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle style15 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontSize: 15.sp,
  );
  static TextStyle style16 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
  );
  static TextStyle style12 = TextStyle(
    fontSize: 12.sp,
  );
  static TextStyle styleSemibold20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
  );
  static TextStyle style14gray = TextStyle(
    fontSize: 14.sp,
  );

  static TextStyle style8 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w300,
    fontSize: 8.sp,
  );
  static TextStyle style9 = TextStyle(
    fontFamily: AppConstants.fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 9.sp,
  );
  static TextStyle style10MediumLineThrough = TextStyle(
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
  );

  static TextStyle style14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle style14MediumUnderline = TextStyle(
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle style15Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
  );
  static TextStyle style13light = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 13.sp,
  );
}
