import 'package:flutter/material.dart';
import 'package:travel_application/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpPage> {
  // State variables declared here
  bool isMaleSelected = true;

  // for terms and conditions checkbox
  bool isAccept = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Top Logo
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Stack(
                  children: [
                    Image.asset('assets/logos/logo.png', width: 220, height: 100),
          
                    Padding(
                      padding: const EdgeInsets.only(top: 75, left: 36),
                      child: Text(
                        "Enjoy your travelling",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Marcellus",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 70),
          
              /// Title
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Marcellus",
                  fontWeight: FontWeight.w400,
                ),
              ),
          
              const SizedBox(height: 150),
          
              /// Gender Checkbox field
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// for male check box
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
          
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Gilroy-Medium",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 70),
                          Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Colors.black12,
                                width: 0.5,
                              ),
                              color:
                                  isMaleSelected
                                      ? Colors.red[50]
                                      : Colors.transparent,
                            ),
                            child:
                                isMaleSelected
                                    ? Icon(
                                      Icons.check,
                                      size: 16,
                                      color: Colors.red, // Red checkmark
                                    )
                                    : null,
                          ),
                        ],
                      ),
                    ),
                  ),
          
                  /// for female check box
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Gilroy-Medium",
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 70),
                          // Container(
                          //   width: 18,
                          //   height: 18,
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(6),
                          //     border: Border.all(
                          //       color: Colors.black12,
                          //       width: 0.5,
                          //     ),
                          //     color:
                          //         isMaleSelected
                          //             ? Colors.red[50]
                          //             : Colors.transparent,
                          //   ),
                          //   child:
                          //       isMaleSelected
                          //           ? Icon(
                          //             Icons.check,
                          //             size: 16,
                          //             color: Color(0xffFF7D0D), // Red checkmark
                          //           )
                          //           : null,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: 20),
          
              /// Password field
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
                  suffixIcon: const Icon(Icons.visibility_outlined),
                ),
              ),
          
              const SizedBox(height: 20),
          
              // Password field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirm Password",
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
          
              const SizedBox(height: 30),
          
              Row(
                children: [
                  /// terms and conditions checkbox
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.black12, width: 0.5),
                      color: isAccept ? Colors.red[50] : Colors.transparent,
                    ),
                    child:
                        isAccept
                            ? Icon(
                              Icons.check,
                              size: 16,
                              color: Color(0xffFF7D0D),
                            )
                            : null,
                  ),
          
                  const SizedBox(width: 12),
          
                  Text("I agree and accept the ", style: TextStyle(fontSize: 15)),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "terms to use.",
                      style: TextStyle(fontSize: 15, color: Color(0xffFF7D0D)),
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: 15),
          
              // Sign Up button
              ElevatedButton(
                onPressed: () {
                  // Add sign-up logic here (e.g., save user data)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFF7D0D),
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gilroy-bold",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
