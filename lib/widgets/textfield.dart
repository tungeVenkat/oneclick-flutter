import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String label;
  final Icon icon;
  final TextInputType keyboardtype;
  final TextEditingController controller;
  const Textfield(
      {super.key,
      required this.label,
      required this.icon,
      required this.keyboardtype,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: TextField(
        controller: controller,
        keyboardType: keyboardtype,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white), // Text color
        decoration: InputDecoration(
          labelText: label,

          labelStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold), // Label color
          prefixIcon: Icon(icon.icon, color: Colors.white), // Icon color
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.green),
          ),
        ),
      ),
    );
  }
}
