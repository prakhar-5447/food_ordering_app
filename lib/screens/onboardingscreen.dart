import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home.dart';
import 'package:food_ordering_app/screens/signup.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
  List<OnboardingPage> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      const OnboardingPage(
        title: 'Pickup',
        subtitle: '& Drop',
        description:
            '"Uniting pick-up and drop-off services in onep place - the power to move, at your fingertips!"',
        backgroundColor: Color.fromARGB(255, 91, 144, 224),
      ),
      const OnboardingPage(
        title: 'Order',
        subtitle: 'Food',
        description:
            '"Savour seamless dining experiences with our SITY app - order, eat, and enhoy with ultimate convenience."',
        backgroundColor: Color.fromARGB(255, 255, 209, 92),
      ),
      const OnboardingPage(
        title: 'Shop',
        subtitle: 'Local',
        description:
            '"Discover, support, and shop local with our all-in-one app for groceries, stationery, and more!"',
        backgroundColor: Color.fromARGB(255, 160, 229, 126),
      ),
      const OnboardingPage(
        title: 'Finder',
        subtitle: '',
        description:
            '"Offers event booking, home services and professional all in one place - find what you need, effortlessly."',
        backgroundColor: Color.fromARGB(255, 91, 144, 224),
      )
    ];
  }

  void _goToNextPage() {
    if (_currentPageIndex < _pages.length - 1) {
      setState(() {
        _currentPageIndex += 1;
      });
      _pageController.jumpToPage(_currentPageIndex);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            itemBuilder: (context, index) => _pages[index],
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100.0),
                  )),
              padding: const EdgeInsets.only(
                top: 25.0,
                bottom: 40.0,
                left: 25.0,
                right: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < _pages.length; i++)
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: _currentPageIndex == i ? 20.0 : 10.0,
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: _currentPageIndex == i
                                  ? _pages[i].backgroundColor
                                  : const Color.fromARGB(255, 225, 224, 224),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    _pages[_currentPageIndex].title,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 5, 66, 157),
                    ),
                  ),
                  _pages[_currentPageIndex].subtitle != ''
                      ? Text(
                          _pages[_currentPageIndex].subtitle,
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 66, 157),
                          ),
                        )
                      : Container(),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text(
                      _pages[_currentPageIndex].description,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 171, 171, 171)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  _currentPageIndex != _pages.length - 1
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignupScreen()));
                              },
                              child: const Text(
                                'Skip Now',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white,
                                    _pages[_currentPageIndex]
                                        .backgroundColor
                                        .withOpacity(0.8),
                                    _pages[_currentPageIndex].backgroundColor,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: _goToNextPage,
                                icon: Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 15.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  backgroundColor:
                                      const Color.fromARGB(255, 5, 66, 157),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => SignupScreen()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 7),
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final Color backgroundColor;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 0,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
