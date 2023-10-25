import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obsecure;

  const textfield(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obsecure,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hinttext,
            hintStyle: TextStyle(color: Colors.grey[600])),
      ),
    );
  }
}
