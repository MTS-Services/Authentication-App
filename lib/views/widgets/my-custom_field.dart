import 'package:flutter/material.dart';

class MyCustomField extends StatelessWidget {
  final String hText;
  final Widget? icon;
  final TextEditingController? controller;
  final bool? obscureText;

  const MyCustomField({
    super.key,
    required this.hText,
    this.icon,
    this.controller,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.green.withOpacity(0.1),
        suffixIcon: icon,
        hintText: hText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.grey.shade600
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
