import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/info.dart';

class SignupFormScreen extends StatefulWidget {
  final Function(bool) page;
  bool isVerify;

  SignupFormScreen({super.key, required this.isVerify, required this.page});

  @override
  State<SignupFormScreen> createState() => _SignupFormScreenState();
}

class _SignupFormScreenState extends State<SignupFormScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                "Get Started...",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
            ),
            Text(
              '"Elevate your experience, sign up now!"',
              style: TextStyle(
                  color: Color.fromARGB(136, 0, 0, 0),
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: const Color.fromARGB(136, 0, 0, 0),
                    width: 1.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Your Name',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(136, 0, 0, 0)),
                      border: InputBorder.none,
                    ),
                    cursorColor: Color.fromARGB(136, 0, 0, 0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: const Color.fromARGB(136, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Mobile No.',
                              border: InputBorder.none,
                            ),
                            cursorColor: Color.fromARGB(136, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(width: 8),
                        !widget.isVerify
                            ? GestureDetector(
                                onTap: () {
                                  widget.page(false);
                                },
                                child: const Text(
                                  'Verfiy',
                                  style: TextStyle(
                                      color: Color.fromARGB(202, 37, 212, 90),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: const Color.fromARGB(136, 0, 0, 0),
                    width: 1.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(136, 0, 0, 0)),
                      border: InputBorder.none,
                    ),
                    cursorColor: Color.fromARGB(136, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => InfoScreen()));
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
                    "Sign Up",
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
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Color.fromARGB(197, 144, 144, 144),
                    height: 25,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Sign Up with",
                      style: TextStyle(
                        color: Color.fromARGB(197, 144, 144, 144),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromARGB(197, 144, 144, 144),
                      height: 25,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(136, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/google.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(136, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/github.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(136, 0, 0, 0)),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/linkedin.png',
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
