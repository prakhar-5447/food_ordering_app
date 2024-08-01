import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/login.dart';
import 'package:food_ordering_app/screens/signup_form.dart';
import 'package:food_ordering_app/screens/verify.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = '/';
  bool _isVerify = false;
  bool _page = true;
  SignupScreen({
    super.key,
  });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 88, 148, 238),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    Container(
                      child: Row(
                        children: [
                          const Text(
                            "Already have an account?  ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LoginScreen(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(238, 232, 232, 0.308),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 6),
                                child: Text(
                                  "Log in",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(45, 15),
                          topRight: Radius.elliptical(45, 15),
                        ),
                        color: Color.fromARGB(160, 142, 210, 255),
                      ),
                      height: 12,
                      child: const FractionallySizedBox(widthFactor: 1.0),
                    ),
                  ),
                  Container(
                    height: 600,
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(30, 30),
                        topRight: Radius.elliptical(30, 30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 50,
                      ),
                      child: widget._page
                          ? SignupFormScreen(
                              isVerify: widget._isVerify,
                              page: (value) {
                                setState(
                                  () {
                                    widget._page = value;
                                  },
                                );
                              })
                          : VerifyScreen(
                              isVerifed: (value) {
                                setState(
                                  () {
                                    widget._isVerify = value;
                                    widget._page = value;
                                  },
                                );
                              },
                            ),
                    ),
                  ),
                ],
              )
            ]));
  }
}
