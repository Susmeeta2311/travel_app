import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel_application/upcoming_tour_page.dart';

class SelectDatePage extends StatelessWidget {
  const SelectDatePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime focusedDay = DateTime.now();
    DateTime? selectedDay;
    int selectedYear = DateTime.now().year;
    int selectedMonthIndex = 0;
    final List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text(
          "Select Date",
          style: TextStyle(fontFamily: "Marcellus", fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<int>(
                        value: selectedYear,
                        onChanged: null,
                        items: List.generate(10, (index) {
                          return DropdownMenuItem(
                            value: DateTime.now().year - 5 + index,
                            child: Text("${DateTime.now().year - 5 + index}"),
                          );
                        }),
                      ),
                      const Text(
                        "Calendar",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gilroy-bold",
                        ),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: months.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                months[index],
                                style: TextStyle(
                                  fontFamily: "Gilroy-Medium",
                                  color:
                                      selectedMonthIndex == index
                                          ? const Color(0xffFF7D0D)
                                          : Colors.black,
                                  fontWeight:
                                      selectedMonthIndex == index
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: TableCalendar(
                          firstDay: DateTime.utc(2020, 1, 1),
                          lastDay: DateTime.utc(2030, 12, 31),
                          focusedDay: focusedDay,
                          selectedDayPredicate:
                              (day) => isSameDay(selectedDay, day),
                          onDaySelected: null,
                          calendarFormat: CalendarFormat.month,
                          headerVisible: false,
                          daysOfWeekStyle: const DaysOfWeekStyle(
                            weekdayStyle: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            weekendStyle: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.red,
                            ),
                          ),
                          calendarStyle: CalendarStyle(
                            defaultTextStyle: const TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 16,
                            ),
                            weekendTextStyle: const TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 16,
                              color: Colors.red,
                            ),
                            todayTextStyle: const TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            todayDecoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            selectedTextStyle: const TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: Colors.orange.shade700,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFF7D0D),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpcomingTourPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 16.5,
                      fontFamily: "Gilroy-bold",
                    ),
                    foregroundColor: Colors.white, // Correct way to set text color
                  ),
                  child: const Text("Start Now Tour"),
                ),
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
