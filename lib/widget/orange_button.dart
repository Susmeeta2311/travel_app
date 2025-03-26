import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;

  const OrangeButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xffFF7D0D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Takes only required space
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: "Gilroy-Medium",
              fontSize: 13.0,
            ),
          ),
          const SizedBox(width: 4), // Space before 'x'
          const Icon(
            Icons.close,
            color: Colors.white,
            size: 17, // Smaller close icon
          ),
        ],
      ),
    );
  }
}
