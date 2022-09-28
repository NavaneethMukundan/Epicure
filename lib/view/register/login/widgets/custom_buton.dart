import 'package:epicure/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.width,
      required this.height,
      required this.fontsize,
      required this.ontap,
      required this.color})
      : super(key: key);

  final String text;
  final double width;
  final double height;
  final Function ontap;
  final double fontsize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ontap();
        },
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: mainColor,
            minimumSize: Size(width, height)),
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontsize, fontWeight: FontWeight.w500, color: color),
        ));
  }
}
