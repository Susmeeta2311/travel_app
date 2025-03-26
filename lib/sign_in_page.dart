import 'package:flutter/material.dart';
import 'package:travel_application/main_page.dart';
import 'package:travel_application/sign_up_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    ValueNotifier<bool> _isPasswordVisible = ValueNotifier<bool>(false);

    void _validateAndLogin() {
      if (formKey.currentState!.validate()) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MainPage()),
        );
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: formKey,
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
              const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Marcellus",
                ),
              ),
              const SizedBox(height: 30),

              // Email field
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: "Gilroy-Medium",
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Johndoe@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Gilroy-Medium",
                    fontSize: 14.0,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 15,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) return 'Email is required';
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Password field with visibility toggle
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontFamily: "Gilroy-Medium",
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ValueListenableBuilder<bool>(
                valueListenable: _isPasswordVisible,
                builder: (context, isPasswordVisible, child) {
                  return TextFormField(
                    controller: _passwordController,
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: "Gilroy-Medium",
                        fontSize: 14.0,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 15,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          _isPasswordVisible.value = !_isPasswordVisible.value;
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) return 'Password is required';
                      if (value.length < 6) return 'Password must be at least 6 characters';
                      return null;
                    },
                  );
                },
              ),

              const SizedBox(height: 10),

              // Forgot Password link
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
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
                onPressed: _validateAndLogin,
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
              Text("or", style: TextStyle(fontSize: 16.0, color: Colors.grey)),
              SizedBox(height: 10.0),

              // Google Login Button
              OutlinedButton(
                onPressed: () {},
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
                    MaterialPageRoute(builder: (context) => SignUpPage()),
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
      ),
    );
  }
}
