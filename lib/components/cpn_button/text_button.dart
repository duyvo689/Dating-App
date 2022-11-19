import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          //backgroundColor: Colors.white, // background
          foregroundColor: Colors.pinkAccent, // foreground
        ),
        onPressed: () {},
        child: const Text('Text Button', style: TextStyle(fontSize: 28)));
  }
}
