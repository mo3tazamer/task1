import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../config/routes/app_generator.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

import '../../../home_screen/presentation/screens/home_screen.dart';
import '../widgets/nav_bar_item.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({super.key});

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  List<Widget> screens = [
    /// example screens
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  List<PersistentBottomNavBarItem> items = [
    navBarItem(
        icon: IconAssets.home,
        routeAndNavigatorSettings: const RouteAndNavigatorSettings(
            onGenerateRoute: AppGenerator.getRoute)),
    navBarItem(
        icon: IconAssets.settings,
        routeAndNavigatorSettings: const RouteAndNavigatorSettings(
            onGenerateRoute: AppGenerator.getRoute)),
    navBarItem(
        icon: IconAssets.cart,
        routeAndNavigatorSettings: const RouteAndNavigatorSettings(
            onGenerateRoute: AppGenerator.getRoute)),
    navBarItem(
        icon: IconAssets.message,
        routeAndNavigatorSettings: const RouteAndNavigatorSettings(
            onGenerateRoute: AppGenerator.getRoute)),
    navBarItem(
        icon: IconAssets.proFile,
        routeAndNavigatorSettings: const RouteAndNavigatorSettings(
            onGenerateRoute: AppGenerator.getRoute)),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      /// handleAndroidBackButtonPress: true,
      controller: PersistentTabController(initialIndex: 0),
      screens: screens,
      items: items,
      context,

      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.scaffoldBackgroundColor,

      resizeToAvoidBottomInset: true,
      confineToSafeArea: true,
      isVisible: true,
      stateManagement: true,
      padding: const EdgeInsets.only(top: 8),
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        colorBehindNavBar: AppColors.scaffoldBackgroundColor,
      ),
    );
  }
}
