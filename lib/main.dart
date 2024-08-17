import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/app.dart';

import 'features/home_screen/presentation/provider/carousal_prrovider/carousal_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => CarousalProvider(),
    ),
  ], child: const Task()));
}
