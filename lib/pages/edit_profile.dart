import 'package:dating_app/configs/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.dSecondColor,
      appBar: AppBar(
        backgroundColor: AppColors.dSecondColor,
        title: const Text(
          'Add Your Best Photo',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.7,
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  // padding: const EdgeInsets.all(6),
                  color: AppColors.dPrimaryColor,
                  child: Center(
                      child: Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: const Icon(
                      UniconsLine.focus_add,
                      size: 30,
                    ),
                  ))),
            );
          },
        ),
      ),
    );
  }
}
