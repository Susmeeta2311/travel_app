import 'package:flutter/material.dart';
import 'package:travel_application/main_page.dart';
import 'package:travel_application/sign_up_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Stack(
              children: [
                Image.asset('assets/logos/logo.png', width: 250, height: 100),

                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 40),
                  child: Text(
                    "Enjoy your travelling",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // Title
            const Text(
              'Log In',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
                fontFamily: "Marcellus",
              ),
            ),
            const SizedBox(height: 30),

            /// Password field
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: 'Johndoe@gmail.com',
                hintStyle: TextStyle(color: Colors.black),

                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 15,
                ),

                // Adjust vertical padding
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border when TextField is not focused
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ), // Custom color
                ),
                focusedBorder: OutlineInputBorder(
                  // Border when TextField is focused
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ), // Custom color
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Password field
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                hintText: '*******',
                hintStyle: TextStyle(color: Colors.black),

                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 15,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border when TextField is not focused
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ), // Custom color
                ),
                focusedBorder: OutlineInputBorder(
                  // Border when TextField is focused
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ), // Custom color
                ),
                suffixIcon: const Icon(Icons.visibility_outlined),
              ),
            ),

            const SizedBox(height: 10),

            // Forgot Password link
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Add forgot password logic here
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xffFF7D0D),
                    fontFamily: "Gilroy-Medium",
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Login button
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()), // Ensure MainPage() is imported
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF7D0D),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Gilroy-bold",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            const SizedBox(height: 10),
            //OR SEPARATOR
            Text("or", style: TextStyle(fontSize: 16.0, color: Colors.grey)),
            SizedBox(height: 10.0),
            //GOOGLE LOGIN BUTTON
            OutlinedButton(
              onPressed: () {
                // Add Google sign-in logic here
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                side: BorderSide(color: Colors.black12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/onboardingpage1/logo.png",
                    // Make sure you add the image in assets/icons
                    height: 24,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Log in with Google",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontFamily: "Gilroy-bold",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            // Sign Up link
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Text(
                'Sign Up Here',
                style: TextStyle(
                  color: Color(0xffFF7D0D),
                  fontFamily: "Gilroy-Medium",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
