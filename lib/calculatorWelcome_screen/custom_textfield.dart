import 'package:flutter/material.dart';

Widget customTextfield(
  TextEditingController controller,
  TextInputType textInputType,
  IconData prefixIcon,
  String hintText,
  bool obscureText,
  TextInputAction textInputAction,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: TextField(
      obscureText: obscureText,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.white,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none,
      ),
    ),
  );
}
