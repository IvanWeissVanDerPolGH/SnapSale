import 'package:flutter/material.dart';
import 'package:snapsale/themes/app_theme.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;
  final VoidCallback onTap;

  const ActionCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: AppGeneric.palleteColor_1,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: AppGeneric.iconColor,
                  size: 40.0,
                ),
                Text(
                  title,
                  style: const TextStyle(color: AppGeneric.text, fontSize: 20),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: const TextStyle(color: AppGeneric.text, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
