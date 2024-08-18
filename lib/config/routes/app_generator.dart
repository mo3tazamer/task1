import 'package:flutter/material.dart';

import '../../features/home_screen/presentation/screens/exclusive_offer_details.dart';
import '../../features/layout/presentation/screens/laoyoutscreen.dart';
import 'app_routes.dart';

class AppGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initialRoute:
        return MaterialPageRoute(builder: (context) => const LayOutScreen());
      case AppRoutes.exclusiveOffer:
        return MaterialPageRoute(
            builder: (context) => const ExclusiveOfferDetails());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
