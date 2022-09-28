import 'package:epicure/utils/constraints.dart';
import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.containerColor,
      required this.raidus,
      required this.image,
      required this.text,
      required this.fontsize,
      required this.textColor})
      : super(key: key);

  final double height;
  final double width;
  final Color containerColor;
  final double raidus;
  final Image image;
  final String text;
  final double fontsize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(raidus)),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                left: 4,
              ),
              child: image),
          kWidth,
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.fade,
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                  fontSize: fontsize,
                  fontWeight: FontWeight.bold,
                  color: textColor),
            ),
          )
        ],
      ),
    );
  }
}
