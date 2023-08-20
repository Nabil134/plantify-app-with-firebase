import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String title;

  IconData? prefix_icon;
  IconData? suffix_icon;
  final TextEditingController controller;
  CustomPasswordTextFormField({
    super.key,
    required this.title,
    this.prefix_icon,
    this.suffix_icon,
    required this.controller,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isPassWordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: isPassWordVisible ? false : true,
      decoration: InputDecoration(
        hintText: widget.title,
        hintStyle: TextStyle(
          color: Color(0xff171717),
          fontSize: 20,
        ),
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
          color: Color(0xff171717),
        ),
        suffixIcon: IconButton(
          icon: isPassWordVisible
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
          onPressed: () {
            print('Hello');
            setState(() {
              isPassWordVisible = !isPassWordVisible;
            });
          },
        ),
      ),
    );
  }
}
