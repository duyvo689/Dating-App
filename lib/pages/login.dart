import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/cpn_button/button.dart';
import '../components/cpn_button/outlined_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  final String logo = 'assets/images/logo.svg';
  final String google = 'assets/images/google.svg';
  final String facebook = 'assets/images/facebook.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          child: Column(children: [
            Expanded(
              child: SvgPicture.asset(logo,
                  color: AppColors.dPrimaryColor,
                  semanticsLabel: 'A red up arrow'),
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Singup to continue',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    SizedBox(height: 40),
                    MyButton(),
                    SizedBox(height: 15),
                    MyOutlinedButton(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(children: const <Widget>[
                      Expanded(
                          child: Divider(
                        height: 2,
                        color: Colors.black,
                      )),
                      SizedBox(width: 20),
                      Text(
                        "Or sign up with",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Divider(
                        height: 1,
                        color: Colors.black,
                      )),
                    ]),
                  ),
                  const SizedBox(height: 30),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.dPrimaryColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(google,
                            color: AppColors.dPrimaryColor,
                            semanticsLabel: 'Google'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.dPrimaryColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(facebook,
                            color: AppColors.dPrimaryColor,
                            semanticsLabel: 'Facebook'),
                      ),
                    ),
                  ]),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
