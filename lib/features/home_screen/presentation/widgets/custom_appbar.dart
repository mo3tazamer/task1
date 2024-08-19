import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/sizes.dart';

import '../../../../core/shared/appbackbutton.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
      this.centerTitle = true,
      this.title,
      this.leading,
      this.leadingWidth = double.infinity,
      this.actions,
      this.automaticallyImplyLeading = true});

  final bool centerTitle;
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  final double leadingWidth;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      leadingWidth: leadingWidth,
      toolbarHeight: AppSizes.s100.h,
      leading: (automaticallyImplyLeading == true && leading == null)
          ? const AppBackButton()
          : leading,
      //toolbarHeight: AppSizes.s80,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black26,
      ),
      centerTitle: centerTitle,
      actions: actions,
      title: title,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, AppSizes.s80.h);
}
