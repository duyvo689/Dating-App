import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({super.key, required this.icon, required this.press});
  final IconData icon;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 50,
        width: 50,
        decoration: const ShapeDecoration(
            color: AppColors.dGrayColor, shape: CircleBorder()),
        child: Center(
          child: Icon(
            icon,
            color: AppColors.dPrimaryColor,
            size: 30,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
      ),
    );
  }
}
