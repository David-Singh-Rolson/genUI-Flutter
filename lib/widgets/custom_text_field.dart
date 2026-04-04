import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  final Function(String)? onChanged;
  const CustomTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: 20, // 👈 increase text size
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 25, // 👈 increase text size
        ),
      ),
    );
  }
}
