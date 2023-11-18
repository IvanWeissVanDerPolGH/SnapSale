import 'package:flutter/material.dart';
import 'package:snapsale/themes/app_theme.dart';

class BackgroundGradient extends StatelessWidget {
  final Widget child;

  const BackgroundGradient({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(gradient: AppGeneric.linearGradient),
      child: child,
    );
  }
}
