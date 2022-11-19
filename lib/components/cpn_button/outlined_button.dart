import 'package:flutter/material.dart';

import '../../configs/colors.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        side: const BorderSide(color: AppColors.dPrimaryColor),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        minimumSize: Size(deviceWidth - 40, 60),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/my_phone');
      },
      child: const Text(
        'Continue with phone',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.dPrimaryColor),
      ),
    );
  }
}
