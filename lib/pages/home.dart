import 'package:dating_app/components/cpn_home/button_home.dart';
import 'package:dating_app/components/cpn_home/my_post.dart';
import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final PageController controller = PageController();
    return Scaffold(
      backgroundColor: AppColors.dLightDark,
      body: Stack(children: [
        PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
          children: const <Widget>[MyPost(), MyPost(), MyPost(), MyPost()],
        ),
        Positioned(
          width: size.width,
          bottom: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ButtonHome(icon: Icons.favorite_border),
              SizedBox(width: 30),
              ButtonHome(icon: Icons.star_border),
              SizedBox(width: 30),
              ButtonHome(icon: Icons.arrow_forward_outlined),
            ],
          ),
        ),
        Positioned(
            width: size.width,
            bottom: 0,
            child: const Divider(color: AppColors.dGrayColor)),
      ]),
    );
  }
}
