import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/sizes.dart';

import '../../../../core/shared/appbackbutton.dart';

class CustomAppBar extends StatelessWidget  {
  const CustomAppBar(
      {super.key,
      this.centerTitle = true,
      this.title,
      this.leading,
      this.actions,
      this.automaticallyImplyLeading = true});

  final bool centerTitle;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize:  const Size.fromHeight(AppSizes.s50),
      child: AppBar(
        leading: (automaticallyImplyLeading == true && leading == null)
            ? const AppBackButton()
            : leading,
        toolbarHeight: AppSizes.s50.h,
        backgroundColor: AppColors.scaffoldBackgroundColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
        ),
        centerTitle: centerTitle,
        actions: actions,
        title: title,
        automaticallyImplyLeading: automaticallyImplyLeading,
      ),
    );
  }


}
