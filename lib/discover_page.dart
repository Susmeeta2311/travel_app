import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/widget/orange_button.dart';
import 'package:travel_application/widget/region_button.dart';
import 'package:travel_application/widget/user_button.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          // Add back arrow
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: const Text(
          "Discover",
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: "Marcellus",
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 16.0,
                ), // Adjust padding
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Takes only required space
                      children: [
                        OrangeButton(text: "Europe"),
                        // Use the OrangeButton widget
                        const SizedBox(width: 13.0),
                        // Space between buttons
                        OrangeButton(text: "5 Star"),
                        // Use the OrangeButton widget
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0), // Space below Row
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "By Region",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: "Gilroy-bold",
                  ),
                ),
                SizedBox(height: 20.0),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 25.0,
                  childAspectRatio: 2.2,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    RegionButton(text: "Asia"),
                    RegionButton(text: "Africa"),
                    RegionButton(text: "Europe", isSelected: true),
                    // Selected Orange Box
                    RegionButton(text: "America"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "By User",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: "Gilroy-bold",
                  ),
                ),
                SizedBox(height: 20.0),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 25.0,
                  childAspectRatio: 2.2,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    UserButton(text: "Popular"),
                    UserButton(text: "Best Choice"),
                    UserButton(text: "Last Trip's"),
                    // Selected Orange Box
                    UserButton(text: "5 Star", isSelected: true),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, right: 20.0, left: 20.0),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xffFF7D0D),
          // Highlighted color
          unselectedItemColor: Colors.grey,
          // Default icon color
          showSelectedLabels: false,
          // Hide labels
          showUnselectedLabels: false,
          // Hide labels
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
                child: Icon(Icons.notifications),
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
