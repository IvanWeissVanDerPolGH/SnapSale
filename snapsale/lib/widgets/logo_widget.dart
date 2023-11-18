import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String imageName;

  const LogoWidget({Key? key, required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName,
      fit: BoxFit.fitWidth,
      width: 240,
      height: 240,
    );
  }
}
