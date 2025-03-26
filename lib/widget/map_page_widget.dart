import 'package:flutter/material.dart';

Widget buildCard({
  required String imageUrl,
  required String title,
  required String location,
  required String description,
  required bool isBookmarked,
}) {
  return Stack(
    children: [
      Container(
        width: 300,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: "Gilroy-Bold",
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xffFF7D0D),
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(location, style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
                // Icon(Icons.bookmark, color: Colors.orange, size: 30),
              ],
            ),
            SizedBox(height: 12),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Gilroy-Medium",
                fontSize: 13.0,
              ),
            ),
          ],
        ),
      ),
      if (isBookmarked)
        Positioned(
          top: 0,
          right: 10,
          child: Icon(Icons.bookmark, color: Color(0xffFF7D0D)),
        ),
    ],
  );
}
