import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/hot_place_page.dart';

class ExplorePage2 extends StatelessWidget {
  const ExplorePage2({super.key});

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
              "assets/icons/main_page/profile.png",
              height: screenHeight * 0.05,
            ),
            Text(
              "Explore",
              style: TextStyle(fontFamily: "Marcellus", fontSize: 26.0),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HotPlacePage()),
                );
              },
              child: Image.asset(
                'assets/icons/tourdetails/notification.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 25.0,
          bottom: 8.0,
          right: 16.0,
          left: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Find your location...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Gilroy-Medium",
                      ),
                      filled: false,
                      // fillColor: Colors.black,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),

                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    color: Color(0xffFF7D0D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.search, color: Colors.white, size: 24),
                ),
              ],
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
                          'https://s3-alpha-sig.figma.com/img/4654/b5e8/5972da0424d3e1b9b0447efb8b45f09e?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=s4DIEzVqKs-x-hFO9TAcsTSmcfxbfDWdR0eryH6iCpX8njpUvhnq7EN5h9XM7MVrB0PhymoSakjlTtIyZHDtCIsCM2qvW43ncIhEdJZeaE0RQBt~D59w1~XB2B16Yp5TAxTDG-whoH~gR2j5FYH0mlM8Z3IQ5v8w6lSkinX4I7VLziyWTnuKExrjZiPchdt7lMpOlxDkmvMEuo0PkBfEAiPgdr9UQzE1emlmOAId6pBX9lep6iQ2yaxy2yMZa3xqLkW~OZL-9iZfyennVD9813Uhhsz4g8g0zcawr6qXBDq~BgxqB0e6G9lzyXZ--56y9HfEdIH9KCU~01o~1kxugQ__',
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
                              'Japan Most Unique Country',
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
                                  'Sesimbra,Lisbon',
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
