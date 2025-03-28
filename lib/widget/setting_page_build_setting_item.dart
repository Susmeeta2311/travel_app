import 'package:flutter/material.dart';
import 'profile_page_custom_text.dart';

class SettingPageBuildSettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const SettingPageBuildSettingItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200, // Background color added
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Icon(icon, size: 24, color: Colors.grey),
              const SizedBox(width: 16),
              Expanded(
                child: CustomText(
                  text: title,
                  size: 14,
                  fontFamily: 'Gilroy-Medium',
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
