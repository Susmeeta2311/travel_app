import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust spacing
              children: [
                Image.asset("assets/icons/explore/explore1.png", width: 63, height: 63),
                Image.asset("assets/icons/explore/explore2.png", width: 63, height: 63),
                Image.asset("assets/icons/explore/explore3.png", width: 63, height: 63),
                Image.asset("assets/icons/explore/explore4.png", width: 63, height: 63),
                Image.asset("assets/icons/explore/explore5.png", width: 63, height: 63),
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
