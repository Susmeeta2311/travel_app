import 'package:flutter/material.dart';

class RegionButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const RegionButton({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFF7D0D) : Color(0xffEDEDED), // Selected button in orange
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Gilroy-bold",
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: isSelected ? Colors.white : Colors.black, // White text for selected
        ),
      ),
    );
  }
}
