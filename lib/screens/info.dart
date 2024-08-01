import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home.dart';
import 'package:food_ordering_app/widgets/dropdown_list.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({
    super.key,
  });

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool isChecked = false;
  String selectedValue1 = 'Option 1';
  String selectedValue2 = 'Option 1';
  String selectedValue3 = 'Option 1';

  List<String> dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];
  bool _isSwitched1 = false;
  bool _isSwitched2 = false;
  bool _isSwitched3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 88, 148, 238),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 60, right: 20, left: 20),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
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
                    height: 680,
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
                          top: 30,
                        ),
                        child: Column(
                          children: [
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "Tell us more about you",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30),
                                  ),
                                ),
                                Text(
                                  '"Let us serve you better!"',
                                  style: TextStyle(
                                      color: Color.fromARGB(136, 0, 0, 0),
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                CustomDropdownList(
                                  name: "Occupation",
                                  dropdownItems: dropdownItems,
                                  selectedValue: selectedValue1,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue1 = newValue!;
                                    });
                                  },
                                ),
                                CustomDropdownList(
                                  name: "App Used",
                                  dropdownItems: dropdownItems,
                                  selectedValue: selectedValue2,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue2 = newValue!;
                                    });
                                  },
                                ),
                                CustomDropdownList(
                                  name:
                                      "Category of service are you interested in?",
                                  dropdownItems: dropdownItems,
                                  selectedValue: selectedValue3,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedValue3 = newValue!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Allow push notification"),
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: _isSwitched1,
                                          onChanged: (value) {
                                            setState(() {
                                              _isSwitched1 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Allow SMS notification"),
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: _isSwitched2,
                                          onChanged: (value) {
                                            setState(() {
                                              _isSwitched2 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Allow E-mail notification"),
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Switch(
                                          value: _isSwitched3,
                                          onChanged: (value) {
                                            setState(() {
                                              _isSwitched3 = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
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
                                    color: Color.fromARGB(255, 22, 173, 42),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                            ]),
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromRGBO(59, 84, 209, 1),
                                    ),
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15),
                                      child: Text(
                                        "Submit",
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
                            ),
                          ],
                        )),
                  ),
                ],
              )
            ]));
  }
}
