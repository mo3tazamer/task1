import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/utils/app_extensions.dart';

import '../svg_image/svg_image.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_textstyles.dart';
import 'app_text_field.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key, this.controller, this.focusNode});

  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return AppTextField(

      controller: controller,
      focusNode: focusNode,
      borderSize: 10.r,
      suffixIcon: IconButton(
        /// TODO: add functionality
        onPressed: () {},
        icon: AppSvgImage(
          image: IconAssets.filters,
        ),
      ),
      fillColor: AppColors.grayColor3,
      hintText: 'Find Product',
      hintStyle: AppTextStyles.style14.copyColorWith(AppColors.grayColor2),
    );
  }
}
