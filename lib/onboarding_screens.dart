import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_application/sign_in_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Data for the three onboarding screens
  final List<Map<String, dynamic>> _onboardingData = [
    // for first onboarding screen
    {
      'image': 'assets/icons/onboardingpage1/person1.png',
      'title': 'Explore',
      'description': 'Explore your favourite destination \naround the world.',
      'icons': [
        // left object icon at top
        {
          'asset': 'assets/icons/onboardingpage1/objects1.png',
          'position': const Alignment(-0.9, -0.6),
          // move right when decrease
          // move top when increase
        },

        // right cube at bottom
        {
          'asset': 'assets/icons/onboardingpage1/cube1.png',
          'position': const Alignment(1.1, 0.3),
          // move left when decrease
          // move top when decrease
        },

        // left tree at bottom
        {
          'asset': 'assets/icons/onboardingpage1/trees1.png',
          'position': const Alignment(-1.0, 0.1),
          // move right when decrease
          // move bottom when increase
        },
      ],
    },

    // for second onboarding screen
    {
      'image': 'assets/icons/onboardingpage2/person2.png',
      'title': 'Easy Peasy',
      'description': 'Make your travel experience very \neasy & peasy.',
      'icons': [
        // left ball at top
        {
          'asset': 'assets/icons/onboardingpage2/ball2.png',
          'position': const Alignment(-0.9, -0.55),
          // move right when decrease
          // move top when increase
        },

        // right clock at bottom
        {
          'asset': 'assets/icons/onboardingpage2/clock2.png',
          'position': const Alignment(1.1, 0.28),
          // move left when decrease
          // move top when decrease
        },

        // left tree at bottom
        {
          'asset': 'assets/icons/onboardingpage2/trees2.png',
          'position': const Alignment(-1.0, 0.2),
          // move right when decrease
          // move bottom when increase
        },
      ],
    },

    // for third onboarding screen
    {
      'image': 'assets/icons/onboardingpage3/person3.png',
      'title': 'Enjoy Tour',
      'description': 'Enjoy your favourite destination with \nyour love one.',
      'icons': [
        // left heart at top
        {
          'asset': 'assets/icons/onboardingpage3/heart3.png',
          'position': const Alignment(-1.0, -0.6),
          // move right when decrease
          // move top when increase
        },

        // right bell at bottom
        {
          'asset': 'assets/icons/onboardingpage3/bell3.png',
          'position': const Alignment(1.1, 0.3),
          // move left when decrease
          // move top when decrease
        },

        // left triangle object at bottom
        {
          'asset': 'assets/icons/onboardingpage3/objects3.png',
          'position': const Alignment(-1.0, 0.4),
          // move right when decrease
          // move bottom when increase
        },
      ],
    },
  ];

  // When the user swipes, update the current page
  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  // Go to the next page or to the login screen if it's the last page
  void _goToNextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _finishOnboarding();
    }
  }

  // Go to the previous page
  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // Save that the user has seen onboarding and go to login
  void _finishOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // The swipable pages
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    // Background circle with gradient
                    Center(
                      child: DottedBorder(
                        borderType: BorderType.Circle,
                        radius: Radius.circular(125),
                        // half of your container's width/height
                        padding: EdgeInsets.all(16.0),
                        color: Color(0xFFFFE1D9),
                        strokeWidth: 3,
                        dashPattern: [4, 5],
                        // adjust for desired dash pattern
                        child: Container(
                          width: 300,
                          height: 260,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFFFFD0B2), Color(0xFFFFE9D9)],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Icons around the circle
                    ..._onboardingData[index]['icons'].map<Widget>((iconData) {
                      return Align(
                        alignment: iconData['position'],
                        child: Image.asset(
                          iconData['asset'],
                          width: 140,
                          height: 150,
                        ),
                      );
                    }).toList(),

                    // Onboarding image in the center
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60, bottom: 50),
                          child: Center(
                            child: Image.asset(
                              _onboardingData[index]['image']!,
                              height: 440,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Title and description at the bottom
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 60, left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            // Title
                            Text(
                              _onboardingData[index]['title']!,
                              style: const TextStyle(
                                fontSize: 45,
                                fontFamily: "Marcellus"
                                // fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 10.0),

                            // description
                            Text(
                              _onboardingData[index]['description']!,
                              // textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                                fontFamily: "Gilroy-Medium",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                );
              },
            ),
          ),

          // Bottom navigation (arrows and dots)
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // Left arrow
                ElevatedButton(

                  onPressed: _goToPreviousPage,

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF7D0D), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                    padding: EdgeInsets.all(0), // Remove default padding
                    minimumSize: Size(48, 48), // Button size
                  ),
                  child: Icon(
                    Icons.arrow_left_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                ),

                // Dots to show which page we're on
                Row(
                  children: List.generate(
                    _onboardingData.length,
                        (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: _currentPage == index ? 8 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                        _currentPage == index ? Color(0xffFF7D0D): Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                // Right arrow
                ElevatedButton(
                  onPressed: () {
                    _goToNextPage() ;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFF7D0D), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                    padding: EdgeInsets.all(0), // Remove default padding
                    minimumSize: Size(48, 48), // Button size
                  ),
                  child: Icon(
                    Icons.arrow_right_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
