import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_application/discover_page.dart';

class HotPlacePage extends StatelessWidget {
  const HotPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DiscoverPage()),
                  );
                },
              ),
              Positioned(
                top: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor: Color(0xffFF7D0D),
                  radius: 6,
                ),
              ),
            ],
          ),
          IconButton(
            icon: Transform.rotate(
              angle: 1.5708, // 90 degrees in radians (π/2)
              child: const Icon(
                Icons.keyboard_control_outlined,
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: const Icon(Icons.keyboard_control_outlined, color: Colors.black,),
          //   onPressed: () {},
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/c698/6bb7/375b0242c68382cd9d977b1a0529f684?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=jkOrkW9MOGgCA2C-KMkt41BuCe474M4HY2Fo7bxhC5D8rKeULQ5P7BWBJ0BGzReEJH4X06-~vNyZ8eEPoh1lJcePITIhT5MPaX~F3Ln3dErdtIUBiElv7KVf~X~jEhRJomLrHJEHOzscBWuTG6zSKu6yixkZUBp~FgeJLOCpUxFcmXbEeNpFNJAU~c2IR4nM~dNZ33HYmfN-FuRQ9UAKnpYg1YxGRBQ8wH-g49mKCpzDaL4dLWUgE2o6H7XZG0hUePQMKo5P-d9J1o81BO66pdClVTjX-8Af73BcrASlzmqr32VNmSZr8BC12xwD1VJPZ-B1HTwoZC0979xix5mClw__',
                      // Replace with your main image URL
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    // Position the bookmark icon
                    top: 0,
                    right: 8,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white, // White color bookmark
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Capital of Thailand',
                style: TextStyle(fontSize: 17, fontFamily: "Gilroy-bold"),
              ),
              Row(
                children: [
                  Icon(Icons.location_on, color: Color(0xffFF7D0D), size: 16),
                  SizedBox(width: 4),
                  Text(
                    'Bangkok, Thailand',
                    style: TextStyle(fontSize: 14, fontFamily: "Gilroy-Medium"),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xffFF7D0D),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '\$5 000',
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
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '7 day',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Gilroy-Medium",
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'summer',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "Gilroy-Medium",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Hot Place',
                style: TextStyle(fontSize: 18, fontFamily: "Gilroy-bold"),
              ),
              SizedBox(height: 16),
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
