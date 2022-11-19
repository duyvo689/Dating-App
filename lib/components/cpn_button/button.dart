import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColors.dPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          minimumSize: Size(deviceWidth - 40, 60),
        ),
        onPressed: () {},
        child: const Text('Continue with email',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)));
  }
}
