import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/explore_page.dart';
import 'package:travel_application/widget/main_page_best_place_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
                "assets/icons/main_page/menu.png", width: screenWidth * 0.07),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExplorePage()));
              },
              child: Image.asset(
                "assets/icons/main_page/profile.png",
                height: screenHeight * 0.05,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get ready for",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: "Marcellus",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "The Travel Trip!",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontFamily: "Marcellus",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Find your location...",
                          hintStyle: TextStyle(color: Colors.grey.shade300),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade200,
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.02),
                    Container(
                      width: screenWidth * 0.12,
                      height: screenWidth * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffFF7D0D),
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  ],
                ),

                SizedBox(height: screenHeight * 0.02),
                Text(
                  "My Location",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Gilroy-bold",
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.bookmark,
                          color: Color(0xffFF7D0D),
                          size: screenWidth * 0.07,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiWjZUhqhzcA4RhW08ouwCdwUVRThr0waEXA&s',
                                width: screenWidth * 0.15,
                                height: screenWidth * 0.15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.03),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Winter in Portugal",
                                    style: TextStyle(
                                      fontFamily: "Gilroy-bold",
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.01),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xffFF7D0D),
                                        size: screenWidth * 0.035,
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        "Lisbon",
                                        style: TextStyle(
                                            fontFamily: "Gilroy-Medium",
                                            color: Colors.grey,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Portugal has so much more to discover. Read about the Azores' new wave of eco-travel.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: "Gilroy-Medium",
                                color: Colors.grey.shade400,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.025),

                Row(
                  children: [
                    Text(
                      "Best Place",
                      style: TextStyle(
                        fontFamily: "Gilroy-bold",
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: "Gilroy-Medium",
                        fontSize: 13.5,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BestPlaceCard(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        title: "Abserian a edlcain",
                        location: "Sismbra,Libson",
                        imageUrl:
                        "https://www.tripsavvy.com/thmb/DPwcND4ULwQuBdwo34yNebfwgsA=/3936x2624/filters:fill(auto,1)/TAM_5392-5c79a296c9e77c0001e98e59.jpg",
                        price: '3000',
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      BestPlaceCard(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        title: "Vietnam",
                        price: "4000",
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
            BottomNavigationBarItem(icon: SvgPicture.asset(
                'assets/icons/options.svg', width: 24, height: 24), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(icon: SvgPicture.asset(
                'assets/icons/message.svg', width: 24, height: 24), label: ''),
            BottomNavigationBarItem(icon: SvgPicture.asset(
                'assets/icons/location.svg', width: 24, height: 24), label: ''),
            BottomNavigationBarItem(icon: SvgPicture.asset(
                'assets/icons/person.svg', width: 24, height: 24), label: ''),
          ],
        ),
      ),
    );
  }
}

