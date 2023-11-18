import 'package:flutter/material.dart';
import 'package:snapsale/themes/app_theme.dart';

class ReusableElevatedButton extends StatelessWidget {
  final Icon icon;
  final String buttonText;
  final Function onTap;

  const ReusableElevatedButton({
    Key? key,
    required this.icon,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: AppGeneric.palleteColor_1,
      ),
      child: ElevatedButton.icon(
        onPressed: () => onTap(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppGeneric.palleteColor_1),
        ),
        icon: icon,
        label: Text(
          buttonText,
          style: const TextStyle(color: AppGeneric.text, fontSize: 16),
        ),
      ),
    );
  }
}
