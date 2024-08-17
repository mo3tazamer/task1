import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_constants.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: AppConstants.fontFamily,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
  );
}
