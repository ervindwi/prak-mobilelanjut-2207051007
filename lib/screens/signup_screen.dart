import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const String route = '/signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration inputDecoration(String label, String hint) => InputDecoration(
          labelText: "$label *",
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Logo
              Center(
                child: Image.asset(
                  "assets/duit.png", // ganti sesuai logo kamu
                  height: 80,
                ),
              ),
              const SizedBox(height: 20),

              // Header
              const Text(
                "Sign Up Now and Unlock the Power of Justduit",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),

              // Full Name
              TextField(
                controller: _name,
                decoration: inputDecoration("Full Name", "Enter your full name"),
              ),
              const SizedBox(height: 16),

              // Email
              TextField(
                controller: _email,
                decoration: inputDecoration("Email Address", "Enter your email"),
              ),
              const SizedBox(height: 16),

              // Password
              TextField(
                controller: _password,
                obscureText: true,
                decoration: inputDecoration("Password", "Create a password"),
              ),
              const SizedBox(height: 16),

              // Confirm Password
              TextField(
                controller: _confirmPassword,
                obscureText: true,
                decoration:
                    inputDecoration("Confirm Password", "Re-enter your password"),
              ),
              const SizedBox(height: 20),

              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Sign up success!")),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Already have account
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.route);
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      decoration: TextDecoration.underline,
                    ),
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
