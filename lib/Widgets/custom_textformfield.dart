import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String title;
  final TextEditingController controller;

  IconData? prefix_icon;

  CustomTextFormField({
    super.key,
    required this.title,
    this.prefix_icon,
    required this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.title,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            width: 1,
            color: Colors.green,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        prefixIcon: Icon(
          widget.prefix_icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
