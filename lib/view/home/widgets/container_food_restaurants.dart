import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:flutter/material.dart';

class AdsContainer extends StatelessWidget {
  const AdsContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.containerColor,
      required this.raidus,
      required this.image,
      required this.text,
      required this.fontsize,
      required this.textColor,
      required this.subText,
      required this.subfontsize,
      required this.ontap})
      : super(key: key);

  final double height;
  final double width;
  final Color containerColor;
  final double raidus;
  final DecorationImage image;
  final String text;
  final String subText;
  final double fontsize;
  final double subfontsize;
  final Color textColor;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(raidus)),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: subfontsize, fontWeight: FontWeight.w600),
                ),
                Text(
                  subText,
                  style: TextStyle(
                      fontSize: fontsize, fontWeight: FontWeight.w800),
                ),
                kheight40,
              ],
            ),
          ),
          Container(
            height: 135,
            width: 180,
            decoration: BoxDecoration(
                color: kBlack,
                borderRadius: BorderRadius.circular(20),
                image: image),
          ),
        ],
      ),
    );
  }
}
