import 'package:flutter/material.dart';
import 'package:travel_application/sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final ValueNotifier<bool> isMaleSelected = ValueNotifier(true);
  final ValueNotifier<bool> isAccept = ValueNotifier(true);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, // Add Form key for validation
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Top Logo
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/logos/logo.png',
                        width: 220,
                        height: 100,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 75, left: 36),
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

                const SizedBox(height: 70),

                /// Title
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Marcellus",
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 130),

                /// Gender Checkbox field
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => isMaleSelected.value = true,
                      child: ValueListenableBuilder<bool>(
                        valueListenable: isMaleSelected,
                        builder: (context, value, child) {
                          return genderCheckbox("Male", value);
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () => isMaleSelected.value = false,
                      child: ValueListenableBuilder<bool>(
                        valueListenable: isMaleSelected,
                        builder: (context, value, child) {
                          return genderCheckbox("Female", !value);
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15.0),

                /// Email Field
                fieldTitle("Email"),
                inputField(
                  controller: _emailController,
                  hintText: "johndoe@gmail.com",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 10),

                /// Password Field
                fieldTitle("Password"),
                inputField(
                  controller: _passwordController,
                  hintText: "Password",
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                /// Confirm Password Field
                fieldTitle("Confirm Password"),
                inputField(
                  controller: _confirmPasswordController,
                  hintText: "Confirm Password",
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Confirm Password is required";
                    }
                    if (value != _passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 30),

                /// Terms and Conditions Checkbox
                GestureDetector(
                  onTap: () => isAccept.value = !isAccept.value,
                  child: ValueListenableBuilder<bool>(
                    valueListenable: isAccept,
                    builder: (context, value, child) {
                      return Row(
                        children: [
                          termsCheckbox(value),
                          const SizedBox(width: 12),
                          const Text(
                            "I agree and accept the ",
                            style: TextStyle(fontSize: 13, fontFamily: "Gilroy-Medium"),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "terms to use.",
                              style: TextStyle(fontSize: 15, color: Color(0xffFF7D0D)),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 15),

                /// Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFF7D0D),
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
      ),
    );
  }

  /// Gender Checkbox UI
  Widget genderCheckbox(String text, bool isSelected) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black12, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: "Gilroy-Medium",
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 70),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.black12, width: 0.5),
                color: isSelected ? Colors.red[50] : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 16, color: Colors.red)
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  /// Field Title UI
  Widget fieldTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black54,
          fontFamily: "Gilroy-Medium",
        ),
      ),
    );
  }

  /// Input Field UI with Validation
  Widget inputField({required TextEditingController controller, required String hintText, bool isPassword = false, String? Function(String?)? validator}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  /// Terms Checkbox UI
  Widget termsCheckbox(bool isChecked) {
    return isChecked ? Icon(Icons.check_box, color: Color(0xffFF7D0D)) : Icon(Icons.check_box_outline_blank);
  }
}

