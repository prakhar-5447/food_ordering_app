import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/signup.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerifyScreen extends StatefulWidget {
  static String routeName = '/';
  final Function(bool) isVerifed;
  const VerifyScreen({
    super.key,
    required this.isVerifed,
  });
  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Verify Mobile No.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
              ),
              Text(
                'Enter OTP sent to +91 8600486217',
                style: TextStyle(
                    color: Color.fromARGB(136, 0, 0, 0),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(children: [
            PinCodeTextField(
              highlight: true,
              highlightColor: const Color.fromARGB(162, 0, 0, 0),
              defaultBorderColor: const Color.fromARGB(59, 0, 0, 0),
              hasTextBorderColor: const Color.fromARGB(110, 34, 130, 185),
              maxLength: 6,
              pinBoxWidth: 40,
              pinBoxHeight: 40,
              pinBoxDecoration:
                  ProvidedPinBoxDecoration.defaultPinBoxDecoration,
              pinTextStyle: const TextStyle(fontSize: 20),
              onTextChanged: (text) {},
            ),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Didn't receive OTP?  ",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend OTP",
                  style: TextStyle(
                      color: Color.fromARGB(255, 21, 221, 48),
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
            ]),
          ]),
        ),
        GestureDetector(
          onTap: () {
            widget.isVerifed(true);
          },
          child: Align(
            alignment: Alignment.center,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(59, 84, 209, 1),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Verifying...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
