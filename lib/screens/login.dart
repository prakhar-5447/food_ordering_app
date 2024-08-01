import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home.dart';
import 'package:food_ordering_app/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });
  static String routeName = '/';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

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
                            "Don't have an account?  ",
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
                                      builder: (_) => SignupScreen()));
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromRGBO(238, 232, 232, 0.308),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 6),
                                child: Text(
                                  "Get Started",
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
                          color: Color.fromARGB(160, 142, 210, 255)),
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
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "Welcome back",
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30),
                                      ),
                                    ),
                                    Text(
                                      'Rediscover limitless services in one app',
                                      style: TextStyle(
                                          color: Color.fromARGB(136, 0, 0, 0),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Column(children: [
                                  const Row(
                                    children: [
                                      Text(
                                        '+ 91',
                                        style: TextStyle(
                                            color: Color.fromARGB(201, 0, 0, 0),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 19, 151, 30)),
                                              ),
                                              hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      136, 0, 0, 0)),
                                              hintText:
                                                  "Enter your mobile no."),
                                          cursorColor:
                                              Color.fromARGB(136, 0, 0, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(children: [
                                    Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value ?? false;
                                        });
                                      },
                                    ),
                                    const Text(
                                      "I agree the ",
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    ),
                                    const Text(
                                      "Terms of Service & Privacy Policy",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 22, 173, 42),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  ]),
                                ]),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => HomeScreen()));
                                },
                                child: Align(
                                  alignment: Alignment.center,
                                  child: FractionallySizedBox(
                                    widthFactor: 1.0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color.fromRGBO(59, 84, 209, 1),
                                      ),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 15),
                                        child: Text(
                                          "Continue",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
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
                          ))),
                ],
              )
            ]));
  }
}
