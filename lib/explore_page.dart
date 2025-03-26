import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/widget/explore_page_my_location_widget.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/main_page/menu.png",
              width: screenWidth * 0.07,
            ),
            Text(
              "Explore",
              style: TextStyle(
                fontFamily: "Marcellus",
                fontSize: 26.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset(
              "assets/icons/main_page/profile.png",
              height: screenHeight * 0.05,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // Adjust spacing
              children: [
                Image.asset(
                  "assets/icons/explore/explore1.png",
                  width: 63,
                  height: 63,
                ),
                Image.asset(
                  "assets/icons/explore/explore2.png",
                  width: 63,
                  height: 63,
                ),
                Image.asset(
                  "assets/icons/explore/explore3.png",
                  width: 63,
                  height: 63,
                ),
                Image.asset(
                  "assets/icons/explore/explore4.png",
                  width: 63,
                  height: 63,
                ),
                Image.asset(
                  "assets/icons/explore/explore5.png",
                  width: 63,
                  height: 63,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "My Location",
              style: TextStyle(
                fontFamily: "Gilroy-bold",
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ExplorePageMyLocationWidget(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    title: "Abserian a edlcain",
                    description:
                        'Portugal there is so much more to discover, Read about the Azores new wave of eco travel..! ',
                    location: "Sismbra,Libson",
                    imageUrl:
                        "https://www.tripsavvy.com/thmb/DPwcND4ULwQuBdwo34yNebfwgsA=/3936x2624/filters:fill(auto,1)/TAM_5392-5c79a296c9e77c0001e98e59.jpg",
                    price: '3000',
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  ExplorePageMyLocationWidget(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    title: "Vietnam",
                    price: "4000",

                    description:
                        'Portugal there is so much more to discover, Read about the Azores new wave of eco travel..!',
                    location: "Rondom,Vietnam",
                    imageUrl:
                        "https://th.bing.com/th/id/OIP.H5SC2U9xooSNBCN7dltCzQHaEK?rs=1&pid=ImgDetMain",
                  ),
                ],
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
