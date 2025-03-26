import 'package:flutter/material.dart';

class ChoiceDatePersonsButton extends StatelessWidget {
  final String text;
  final bool isSelected; // New parameter

  const ChoiceDatePersonsButton({
    super.key,
    required this.text,
    this.isSelected = false, // Default is false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 17),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffFF7D0D) : Colors.grey[300], // Orange if selected, light grey otherwise
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black, // White text when selected, black otherwise
          fontWeight: FontWeight.w400,
          fontFamily: "Gilroy-bold",
          fontSize: 13.0,
        ),
      ),
    );
  }
}
