import 'package:flutter/material.dart';
import 'package:my_first_app/screens/home_screen.dart';
import 'package:my_first_app/widgets/custom_text_field.dart';
import 'package:my_first_app/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  void handleLogin() {
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen(email: email)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextField(
              label: "Email",
              onChanged: (value) {
                email = value;
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              label: "Password",
              isPassword: true,
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(height: 20),
            PrimaryButton(text: "Login", onPressed: handleLogin),
          ],
        ),
      ),
    );
  }
}
