import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/settings_page.dart';
import 'package:travel_application/widget/profile_page_custom_text.dart';

// import '../screens/explore_page.dart';
// import '../screens/map_page.dart';
// import '../screens/chat_screen.dart';
// import '../screens/payment_method_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // void _onItemTapped(BuildContext context, int index) {
  //   if (index == 0) {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const ExplorePage()),
  //     );
  //   } else if (index == 1) {
  //     // Navigate to a FavoritesScreen (placeholder)
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const FavoritesScreen()),
  //     );
  //   } else if (index == 2) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const ChatScreen()),
  //     );
  //   } else if (index == 3) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const MapPage()),
  //     );
  //   } else if (index == 4) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => const PaymentMethodScreen()),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const CustomText(
          text: 'Profile',
          size: 26,
          fontFamily: 'Marcellus',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/profile_page/Vector.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              // Stack(
              //   clipBehavior: Clip.none,
              //   children: [
              //     // Background Image
              //     Container(
              //       height: 150,
              //       width: double.infinity,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(12),
              //         image: const DecorationImage(
              //           image: NetworkImage(
              //             'assets/images/profile/cover.png',
              //           ),
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     ),
              //     // Profile Picture
              //     Positioned(
              //       left: 0,
              //       bottom: -40,
              //       child: CircleAvatar(
              //         radius: 40,
              //         backgroundColor: Colors.white,
              //         child: CircleAvatar(
              //           radius: 36,
              //           backgroundImage: const NetworkImage(
              //             'assets/images/profile/profile.png',
              //
              //           ),
              //           onBackgroundImageError: (exception, stackTrace) {
              //             print('Failed to load profile image');
              //           },
              //         ),
              //       ),
              //     ),
              //     // Edit Profile Button
              //     Positioned(
              //       right: 0,
              //       bottom: -40, // Align with the bottom of the CircleAvatar
              //       child: ElevatedButton(
              //         onPressed: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(builder: (context) => const SettingsScreen()),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //           backgroundColor: const Color(0xffFF7D0D),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              //         ),
              //         child: const CustomText(
              //           text: 'Edit Profile',
              //           color: Colors.white,
              //           size: 11,
              //           fontFamily: 'Gilroy-bold',
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Background Image
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/icons/profile_page/profile.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Profile Picture
                  Positioned(
                    left: 0,
                    bottom: -40,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: const AssetImage(
                            'assets/icons/main_page/profile.png',
                          ),
                          onBackgroundImageError: (exception, stackTrace) {
                            print('Failed to load profile image');
                          },
                        ),

                        // Orange Dot
                        Positioned(
                          bottom: 5,
                          right: 7,
                          // Adjust to align with the bottom-right of the avatar
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Color(
                              0xffFF7D0D,
                            ), // Outer orange dot
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Edit Profile Button

                  Positioned(
                    right: 0,
                    bottom: -60,
                    // Align with the bottom of the CircleAvatar
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const SettingsScreen()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFF7D0D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                      child: const CustomText(
                        text: 'Edit Profile',
                        color: Colors.white,
                        size: 11,
                        fontFamily: 'Gilroy-bold',
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 48),
              // User Info
              const CustomText(
                text: 'Hasan Mahmud',
                size: 16,
                fontFamily: 'Gilroy-bold',
              ),
              const SizedBox(height: 8),
              const CustomText(
                text:
                    'hello I’m Professional Expert UI/UX Designer\nI love create a App design, Landing page,Web design.\nI am over 3 year experience in UI/UX Design.',
                size: 10,
                color: Colors.grey,
                fontFamily: 'Gilroy-Medium',
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 20,
                    color: Color(0xffFF7D0D),
                  ),
                  const SizedBox(width: 4),
                  const CustomText(
                    text: 'Thailand',
                    size: 11,
                    color: Colors.grey,
                    fontFamily: 'Gilroy-Medium',
                  ),
                  const SizedBox(width: 16),
                  const Icon(
                    Icons.calendar_month_outlined,
                    size: 20,
                    color: Color(0xffFF7D0D),
                  ),
                  // Image.asset(
                  //   "assets/icons/profile_page/calender.png",
                  //   width: 25,
                  //   height: 20,
                  //   fit: BoxFit.contain,
                  // ),
                  const SizedBox(width: 4),
                  const CustomText(
                    text: 'December 2019',
                    size: 11,
                    color: Colors.grey,
                    fontFamily: 'Gilroy-Medium',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Stats Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const CustomText(
                        text: '30 Post',
                        size: 13,
                        fontFamily: 'Gilroy-Bold',
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                  Column(
                    children: [
                      const CustomText(
                        text: '209 Follower',
                        size: 13,
                        fontFamily: 'Gilroy-Bold',
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                  Column(
                    children: [
                      const CustomText(
                        text: '344 Following',
                        size: 13,
                        fontFamily: 'Gilroy-Bold',
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/icons/profile_page/icon.png",
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 5),
                          // Add spacing between icon and text
                          const Text(
                            'Post',
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Gilroy-medium',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.ondemand_video_outlined,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 5),
                          // Add spacing between icon and text
                          const Text(
                            'Video',
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Gilroy-medium',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bookmark_border, color: Colors.grey),
                          const SizedBox(width: 5),
                          // Add spacing between icon and text
                          const Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Gilroy-medium',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Add spacing between the Row and Divider
                  const Divider(
                    color: Color(0xFFCCCCCC), // Divider color
                    thickness: 0.5, // Adjust thickness if needed
                  ),
                ],
              ),

              const SizedBox(height: 12),
              // Posts Grid Image
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children:
                [
                  'https://s3-alpha-sig.figma.com/img/0c82/47d2/d3358cad5219bb2d9bb1634e39940e4b?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=gOXT7HvQG2j~-tvSfp9BECYZugOK8rHR2-FV~6UHXSnXGLkTUUih9Rt053F3H5g-nWmtC1gwJ~l24x3qAXG7eGWLx5TXuyqaOWDtFWlekwkm8UU-D9eRkWuvoXH~uXx-TxjdLJe4q4A1zpdBex7TMeGVEhFctUA7psCtiRijLD1rmainYz4-eQwGOrbrNPXzvfmj7q2EAfvFNfK82zeWupOQC27mIzOeFxraJHmtxUL0Xkgs3gVwxasuJrb0eVmtQ9NAguYILmON0rcUzRHzLY8g9yfrcVMaK6loFQynrPtCR8iekgXVln6tldY2j8Uaq15NCnGKqqMLtGSUzRAIVw__',
                  'https://s3-alpha-sig.figma.com/img/8a43/4c5e/86a2b37b8f5c8ab777ca9c7b289c68dd?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=PcWCdXRCGZ6c02kDxvzeem8OqnNkayAVbee3H~Vtaj~qQIqF1xfp8rwBwm9OJUQH-g7FX2uXrSNwD8973GWHqhAwPpOqNItzI0yR2B1~DIHOC5n1elwuhMl80MOHwJrSLA-CYyGEXFM0tkCDxu~mpApwR2PfCipKe3czDDhtcgBEvvoD8cs8GaFUzUwKC3HfcNMpvrGNRIJUJSu3o3B4g6Vs~JMLxfs5uhSLdmZS2~LLB5nvRWEOUenKdlCCtYdtl-oVPslAaZwKX0HC2qt2RmR8he9kNAQDv~McRE8Vy4oQBf1gmkEYRmQzVOeZdjAtLNoe9nJ7KZVU76osK9VeCw__',
                  'https://s3-alpha-sig.figma.com/img/c1d5/c4ae/8d589f2b5a1ee67ada53d6c0e35a65ca?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Ix1Lec6gGrIRsZHpVfYSM7Li2n6pITnbse6EWiLdZ7bQv7e7NJuNh4y0gzWZsC05izEndXLCyU~y39F4ginqMago1VjP5Fq-zcZy9LQ7i7WRtBlZlzWcy5wB98G5MGa9-VX3FlLJVNcfiWzbg9BjEupBLOloPZnZ--TLQSCG35tJIeHhW3DJOc9MbZAA8cAN-mj66~jzQ~ICMhe8Qsa7pG-HZOaZTaAFINW7IQR5l30B2jAYxqe2kFoI9KS5e47eIzcCboCmFL7bwT0RKkC8EbLXPr5lkprPd9Ovf5xA8r0CqmAY8pHd3JOELIWnTTbGOdct1YWlivfVR43tW6Tj1w__',
                  'https://s3-alpha-sig.figma.com/img/dfcb/8f6b/e37a1191036953bd1381e0aae8cb4a33?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Wy1E~2zLnTjYRAA-wiewV~vWgQrPgiC9TuTRGhtc~aDzAw3lTFzh0xCkxF46z9rXtLWJ05TPTZwsu7JNnfjNhSFamzAq5hOo8hFu7aiTs285VXduBbst4advjq85dFB7zaiuDl7PJf4GmqPdj1kGM7PsWpBGiSR2-tVtue1EGgGJxaWpdn43EhTiuUeba0Y66NC-bV6JkMAthE-tIJ~O4Mv5VqFTgBew6XqdCtprYZwQeU39u3FF87RWU46wJsCPgg-KTeokhNLaNQa0~Wh8ZkFkTsYYhziOrX7fSORYbtlkaGKsopXp6XBMEXay9FT3uvRIiSbJIMLkdVdzKKo~EQ__',
                  'https://s3-alpha-sig.figma.com/img/9d94/acb9/1d6dc6ba67414f9bbc9bd90a5b481156?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qqQpkUkrDRolP7cxJ2NHv4gRgTCUCsPQcF2p1hBZ1pJ9lE6YVmC~Mw8hoK9y7RRIZ3pLw3vvJ-zzNdOOXBqY-L8o5Ae9G9KSmv1mp~Q-ighDbWGV7vnO7wEt~cJAgMZxvAHZBYV106~vYSP5cFMWVK99JTk5lcC~pHDRv1~aGUkge-cFMDeSRma-C0IG1MOYuu4JNYn4-d7T5hEE9VC8-PEvD4tDt1NiC6wrS9wlW-UTTO2rz0rWgigaNyrBXjgqhztrgb8HcZFKSvHZ413HhwZCvd-zwl-4AdqNN0COzOuhnMveku5OSEgvfcDXUAbQL9ZjSnorfO0XhMsaA68hVA__',
                  'https://s3-alpha-sig.figma.com/img/a45f/f13a/0a6cc2ed736dae2881e63ef845dea76c?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=EDeqdLY09WEbxLIailspOfjYC4FIuo-UYU9E~bUyaYjiUPHtMdNRXzFGrYrhuJgOdu6kEBMGgBJy6vZGu7qkxthSkMKT8iJd0ohPVbiNhb6Xm5Q5dyv7fuwvB0zA77TL3uCkDJ8Hd67XEp3CnHy6nuZAVfLMICkmGzHv-BAwJAnvD8Uywo3UdF~66FWrGLZYuPIvOA4ZKEj3ZD557CxofbYEJvGxk-HMScha3UjcTAtY9nhFdGYloGbugNrL5yIF6WqBKztX4mo-pjyH-a7puDMhXyYWvf1ei067tNnEc~VJet4HlnVJPayCHi~RkkD3X8ClMAxy2RyaXt6CTDV~PQ__',
                ]
                    .map(
                      (url) => ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(url, fit: BoxFit.cover),
                  ),
                )
                    .toList(),
              ),
              const SizedBox(height: 20),
            ],
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

// Placeholder for FavoritesScreen
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: const Center(child: Text("Favorites Screen")),
    );
  }
}
