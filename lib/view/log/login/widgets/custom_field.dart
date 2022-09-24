import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.iconsize,
    required this.textHeight,
    required this.padding,
    required this.color,
    required this.radius,
    required this.iconcolor,
  }) : super(key: key);

  final IconData icon;
  final String hintText;
  final double iconsize;
  final double textHeight;
  final double padding;
  final Color color;
  final Color iconcolor;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(padding),
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: iconcolor,
          size: iconsize,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide(color: color)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: color),
        ),
      ),
    );
  }
}
