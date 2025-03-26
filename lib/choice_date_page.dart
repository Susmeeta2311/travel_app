import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/select_date_page.dart';
import 'package:travel_application/widget/choice_date_orange_button.dart';
import 'package:travel_application/widget/choice_date_persons_button.dart';
import 'package:travel_application/widget/choice_date_travel_days_button.dart';
import 'package:travel_application/widget/choice_date_travel_time_button.dart';

class ChoiceDatePage extends StatelessWidget {
  const ChoiceDatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "Choice Date",
          style: TextStyle(
            fontFamily: "Marcellus",
            fontSize: 26.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectDatePage()),
            );
          }, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    // Enables horizontal scrolling
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      // Takes only required space
                      children: [
                        ChoiceDateOrangeButton(text: "Europe"),
                        const SizedBox(width: 13.0),
                        ChoiceDateOrangeButton(text: "5 Star"),
                        const SizedBox(width: 13.0),
                        ChoiceDateOrangeButton(text: "February"),
                        const SizedBox(width: 13.0),
                        ChoiceDateOrangeButton(text: "1"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),

            // Travel Time Section
            Text(
              "Travel Time",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Gilroy-bold",
              ),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceDateTravelTimeButton(text: "January"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(
                    text: "February",
                    isSelected: true,
                  ),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "March"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "April"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "May"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "June"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "July"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "August"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "September"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "October"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "November"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelTimeButton(text: "December"),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Travel Day's",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Gilroy-bold",
              ),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceDateTravelDaysButton(text: "30 day's or less"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelDaysButton(text: "15-7 day"),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelDaysButton(text: "7-4 day", isSelected: true),
                  SizedBox(width: 13.0),
                  ChoiceDateTravelDaysButton(text: "5-2 day"),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Person's",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Gilroy-bold",
              ),
            ),
            SizedBox(height: 30.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceDatePersonsButton(text: "1"),
                  SizedBox(width: 13.0),
                  ChoiceDatePersonsButton(text: "3", isSelected: true),
                  SizedBox(width: 13.0),
                  ChoiceDatePersonsButton(text: "7"),
                  SizedBox(width: 13.0),
                  ChoiceDatePersonsButton(text: "10"),
                ],
              ),
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
