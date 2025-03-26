import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_application/map_page.dart';

class TourDetailPage extends StatelessWidget {
  final PageController _pageController =
      PageController(); // Added PageController

  TourDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/tourdetails/notification.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MapPage()));
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Slider
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Image.network(
                      "https://www.tripbibo.com/blog/wp-content/uploads/2021/12/Vietnam.jpg",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://www.tripsavvy.com/thmb/j612aq-Vz0HVu-KvH_OtNwrmE8A=/2122x1413/filters:fill(auto,1)/GettyImages-531732818-592d24ec3df78cbe7e956e68.jpg",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://th.bing.com/th/id/OIP.g_l2fLGtA19IKZyoSmj7oQHaDt?rs=1&pid=ImgDetMain",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // Smooth Page Indicator
            Center(
              child: SmoothPageIndicator(
                controller: _pageController, // Attach controller
                count: 3, // Number of images
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xffFF7D0D),
                  dotHeight: 6,
                  dotWidth: 6,
                ),
              ),
            ),
            SizedBox(height: 10),

            // Title and Temperature
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Capital of Thailand",
                      style: TextStyle(fontSize: 18, fontFamily: "Gilroy-bold"),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xffFF7D0D),
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Bangkok, Thailand",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Gilroy-Medium",
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/tourdetails/cloud.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "30°C",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Gilroy-bold",
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),

            // Price Tag
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xffFF7D0D),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "\$5000",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Service Section
            Text(
              "Service",
              style: TextStyle(fontSize: 18, fontFamily: "Gilroy-bold"),
            ),
            SizedBox(height: 15.0),

            // Service Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Adjust spacing
              children: [
                Image.asset(
                  "assets/icons/tourdetails/sun.png",
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  "assets/icons/tourdetails/Air.png",
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  "assets/icons/tourdetails/Boat.png",
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  "assets/icons/tourdetails/Car.png",
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  "assets/icons/tourdetails/Bick.png",
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 35.0),
            Text(
              "Bangkok, Thailand’s capital, is a large city known for ornate shrines and vibrant street life. The boat-filled Chao Phraya River feeds its network of canals, flowing past the Rattanakosin royal district, home to opulent Grand Palace and its sacred Wat Phra Kaew Temple. earby is Wat Pho Temple with an enormous reclining Buddha and, on the opposite shore.",
              style: TextStyle(
                fontFamily: "Gilroy-Medium",
                fontSize: 11.0,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30, right: 20, left: 20),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffFF7D0D),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/options.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.notifications),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/message.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/location.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/person.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
