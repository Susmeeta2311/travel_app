import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestPlaceCard extends StatelessWidget {
  const BestPlaceCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
  });

  final double screenHeight;
  final double screenWidth;
  final String imageUrl;
  final String title;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.8,
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              imageUrl,
              width: screenWidth * 0.8,
              height: screenHeight * 0.25,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.03,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Gilroy-bold",
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/location.svg',
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4),
                        Text(
                          location,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "\$$price",
                    style: TextStyle(
                      fontFamily: "Gilroy-bold",
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 11.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
