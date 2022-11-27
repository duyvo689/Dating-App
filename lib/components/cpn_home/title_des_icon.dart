import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

class TitleDesIcon extends StatelessWidget {
  const TitleDesIcon({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.dWhite,
          size: 16,
        ),
        const SizedBox(width: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontWeight: FontWeight.w300, fontSize: 14, color: Colors.white),
        ),
      ],
    );
  }
}
