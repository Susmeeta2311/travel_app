import 'package:flutter/material.dart';

class UserButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const UserButton({super.key, required this.text, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFF7D0D) : Colors.grey.shade300, // Selected button in orange
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