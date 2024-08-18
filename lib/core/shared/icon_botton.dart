import 'package:flutter/material.dart';

class AppIconBotton extends StatelessWidget {
  const AppIconBotton({super.key, required this.icon, this.onPressed});

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}
