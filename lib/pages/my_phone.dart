import 'package:dating_app/components/cpn_button/button.dart';
import 'package:dating_app/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController textEditingController = TextEditingController();
  bool isEmailCorrect = false;
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  dynamic snackBar = SnackBar(
    duration: const Duration(milliseconds: 1500),
    content: const Text("Your Registration Complete"),
    action: SnackBarAction(
      label: 'Got it',
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'My mobile',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Please enter your valid phone number. We will send you a 4-digit code to verify your account',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          autofocus: true,
                          controller: textEditingController,
                          showCursor: true,
                          onChanged: ((value) {
                            setState(() {
                              isEmailCorrect = isEmail(value);
                            });
                          }),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              label: const Text('Phone'),
                              labelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              hintText: '09xxxx',
                              hintStyle: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                              prefixIcon: const Icon(
                                Icons.phone_iphone_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                              suffixIcon: isEmailCorrect
                                  ? const Icon(Icons.done, color: Colors.green)
                                  : const Icon(Icons.close_sharp,
                                      color: Colors.red),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: AppColors.dPrimaryColor, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              floatingLabelStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: isEmailCorrect
                                        ? AppColors.dPrimaryColor
                                        : Colors.red,
                                    width: 1),
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const MyButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
