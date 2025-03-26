import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExplorePageMyLocationWidget extends StatelessWidget {
  const ExplorePageMyLocationWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.location,
    required this.price,
  });

  final double screenHeight;
  final double screenWidth;
  final String imageUrl;
  final String title;
  final String description;
  final String location;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.8,
      height: screenHeight * 0.50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
              imageUrl,
              width: screenWidth * 0.8,
              height: screenHeight * 0.60,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.03,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Column(
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
                SizedBox(height: 4),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/location.svg',
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.035,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
