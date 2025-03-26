import 'package:flutter/material.dart';

class ChoiceDateTravelDaysButton extends StatelessWidget {
  final String text;
  final bool isSelected; // New parameter

  const ChoiceDateTravelDaysButton({
    super.key,
    required this.text,
    this.isSelected = false, // Default is false
  });

  @override
  Widget build(BuildContext context) {
    List<String> parts = text.split(" ");
    String mainText = parts[0];
    String? subText = parts.length > 1 ? parts.sublist(1).join(" ") : null;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10), // Adjusted vertical padding
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffFF7D0D) : Colors.grey[300], // Orange if selected, light grey otherwise
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ensure Column takes minimum space
        children: [
          Text(
            mainText,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black, // White text when selected, black otherwise
              fontWeight: FontWeight.w400,
              fontFamily: "Gilroy-bold",
              fontSize: 13.0,
            ),
            textAlign: TextAlign.center,
          ),
          if (subText != null)
            Text(
              subText,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black, // White text when selected, black otherwise
                fontWeight: FontWeight.w400,
                fontFamily: "Gilroy-bold",
                fontSize: 13.0,
              ),
              textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}