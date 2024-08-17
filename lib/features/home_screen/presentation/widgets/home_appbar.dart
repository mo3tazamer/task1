import 'package:flutter/material.dart';
import 'package:task1/features/home_screen/presentation/widgets/custom_appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomAppBar(
      leading: CircleAvatar(
        maxRadius: 50,
        foregroundColor: Colors.red,
        backgroundColor: Colors.green,

      ),

    );
  }
}
