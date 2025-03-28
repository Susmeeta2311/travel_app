import 'package:flutter/material.dart';
import 'package:travel_application/widget/profile_page_custom_text.dart';
import 'package:travel_application/widget/setting_page_build_setting_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const CustomText(
          text: 'Settings',
          size: 26,
          fontFamily: 'Marcellus',
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Profile Section
              Row(
                children: [
                  const SizedBox(height: 10),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/icons/main_page/profile.png'),
                  ),

                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Hasan Mahmud',
                        size: 16,
                        fontFamily: 'Gilroy-bold',
                      ),
                      const SizedBox(height: 4),
                      const CustomText(
                        text: 'sample@gmail.com',
                        size: 11,
                        color: Colors.grey,
                        fontFamily: 'Gilroy-Medium',
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black, // Changed to black
                    ),
                    onPressed: () {
                      // Navigate to a detailed profile editing screen if needed
                    },
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Preference Section
              Padding(
                padding: const EdgeInsets.only(left: 23), // Align with the Notification icon
                child: const CustomText(
                  text: 'Preference',
                  size: 16,
                  fontFamily: 'Gilroy-bold',
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(16), // Keep only one padding
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    SettingPageBuildSettingItem(
                      icon: Icons.notifications,
                      title: 'Notification',
                      onTap: () {},
                    ),
                    SettingPageBuildSettingItem(
                      icon: Icons.language,
                      title: 'Language',
                      onTap: () {},
                    ),
                    SettingPageBuildSettingItem(
                      icon: Icons.attach_money,
                      title: 'Currency',
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              // Banking & Payment Section
              Padding(
                padding: const EdgeInsets.only(left: 30), // Align with the Payment Method icon
                child: const CustomText(
                  text: 'Banking & Payment',
                  size: 16,
                  fontFamily: 'Gilroy-bold',
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16), // Keep only one padding
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  children: [
                    SettingPageBuildSettingItem(
                      icon: Icons.payment,
                      title: 'Payment Method',
                      onTap: () {
                        Navigator.pushNamed(context, '/payment_method');
                      },
                    ),
                    SettingPageBuildSettingItem(
                      icon: Icons.privacy_tip,
                      title: 'Privacy Policy',
                      onTap: () {},
                    ),
                    SettingPageBuildSettingItem(
                      icon: Icons.description,
                      title: 'Terms of Use',
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),
              // Log Out Button
              SizedBox(
                width: double.infinity, // Full-width button
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to LoginScreen on logout
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const LoginScreen()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFF7D0D),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout, color: Colors.white),
                      SizedBox(width: 8),
                      CustomText(
                        text: 'Log Out',
                        size: 16,
                        color: Colors.white,
                        fontFamily: 'Gilroy-Bold',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

}