import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
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
              child: Form(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) => {
                            if (value == 1) {FocusScope.of(context).nextFocus()}
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) => {
                            if (value == 1) {FocusScope.of(context).nextFocus()}
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) => {
                            if (value == 1) {FocusScope.of(context).nextFocus()}
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) => {
                            if (value == 1) {FocusScope.of(context).nextFocus()}
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
