import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpcomingTourPage extends StatelessWidget {
  const UpcomingTourPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Upcomming Tour",
          style: TextStyle(fontFamily: "Marcellus", fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => HotPlacePage()),
            // );
          }, icon: const Icon(Icons.more_vert)),
        ],
      ),
      // Service Icons
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // Aligns children to the left
        children: [
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust spacing
            children: [
              Image.asset(
                "assets/icons/tourdetails/sun.png",
                width: 60,
                height: 60,
              ),
              Image.asset(
                "assets/icons/tourdetails/Air.png",
                width: 60,
                height: 60,
              ),
              Image.asset(
                "assets/icons/tourdetails/Boat.png",
                width: 60,
                height: 60,
              ),
              Image.asset(
                "assets/icons/tourdetails/Car.png",
                width: 60,
                height: 60,
              ),
              Image.asset(
                "assets/icons/tourdetails/Bick.png",
                width: 60,
                height: 60,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 16.0), // Align text to the left
            child: Text(
              "7 days up to the next tour",
              style: TextStyle(fontFamily: "Gilroy-bold", fontSize: 18.0),
            ),
          ),
          const SizedBox(height: 20.0),

          // Flight Duration
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Light background
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "15 Feb",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: "Gilroy-Medium",
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 2,
                          color: Colors.grey[500], // Light grey line
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 2,
                            width: 120, // Adjust the width of the orange part
                            color: Color(0xffFF7D0D),
                          ),
                        ),
                        const Icon(
                          Icons.flight,
                          color: Color(0xffFF7D0D),
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "22 Feb",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: "Gilroy-Medium",
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            // Align "History" text to the left
            child: Text(
              "History",
              style: TextStyle(fontFamily: "Gilroy-bold", fontSize: 18.0),
            ),
          ),
          const SizedBox(height: 30.0),
          Center(
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const HotPlacePage()),
                // );
              },
              child: Container(
                width: 370, // Adjust width as needed
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(13),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/3ca5/deff/4cbf03037199187e999fe933641ae322?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UUuDR2EiRAaN93wmeop6rum9RLqXYPXXZ2ozgTDmhQdjt4fuQBgvHtEd8-MhbCvDRGCkCZxDsC6b-JACI5NYaksDyY5ehfeEPUmS2SIFuLtcKe3au2WoI0aAEr2PlkU92cK2s5nKbMF7zeyFeIj~4p9mZMVE2giUJAFWxoX8Acd0awhjQu39~fAqqfOgw7zkqFXTEpG97BM3TVxmHo5KqyjtvRlsEsiPyXggSNG53yrhO4Zhp-uqeH03OHlpVmE5UvyfhxkcEPLsjalaySwpzeXYbS51vDUyLF0GwqZna1AnCycWl2qLB4v9eDEmT-WtT1Q2jSl~H8m1ZLZZm1k8mw__',
                        // Replace with your image URL
                        width: 60, // Adjust image width as needed
                        height: 90, // Adjust image height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Winter in Portugal',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-bold",
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xffFF7D0D),
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Lisbon',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Gilroy-Medium",
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffFF7D0D),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '\$3 000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "Gilroy-bold",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '7 day',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Medium",
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'winter',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Medium",
                                  ),
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
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: InkWell(
              child: Container(
                width: 370, // Adjust width as needed
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(13),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/959b/9bf3/516c83ad71f95251dfded742f7975927?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pKi3o270tHeULJS9MIregnx~hdQYvXtUIzrLVuPfEkw0Agi1toWA0XBVbiRCKURhhVPFcUz48zG9vdaTxEzptqSYMy2~rABOtOlf~Hms-J0MdIw-ZtHgBlOnaZlUgRECrMS2IpE9RmaTJ0ELNWRj80IRnPujPXzHBBd7rOv1pi-MuZye5qo5lCPm8qjijVHF9~kha2TheAIuXKZ82Te4nKZjx8aoFcaSeOQ9R8Cf1vJJ3thqF5cbYM39QhW6LzB3JfOgl9W1Y5Po7nTZ3sC48z3oxTchswtxdbtbakxV5pDjdj1C-pvIhClIIj7GkIbP~7LudEoe4Ldl7eBxMKt8JA__',
                        // Replace with your image URL
                        width: 60, // Adjust image width as needed
                        height: 90, // Adjust image height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sesimbra e Arrabida',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-bold",
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Color(0xffFF7D0D),
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Sesimbra, Lisbon',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Gilroy-Medium",
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffFF7D0D),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '\$2 000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "Gilroy-bold",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '3 day',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Medium",
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  'summer',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Gilroy-Medium",
                                  ),
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
            ),
          ),
        ],
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
