import 'package:epicure/utils/constraints.dart';
import 'package:flutter/material.dart';

class FavoriteContainerWidget extends StatelessWidget {
  const FavoriteContainerWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.raduis,
      required this.secondContanerheight,
      required this.secondContanerwidth,
      required this.secondContanerRaduis,
      required this.secondContanerpadding,
      required this.image,
      required this.subText,
      required this.mainText,
      required this.icon,
      required this.containercolor})
      : super(key: key);

  final double height;
  final double width;
  final double raduis;
  final Color containercolor;
  final double secondContanerheight;
  final double secondContanerwidth;
  final double secondContanerRaduis;
  final double secondContanerpadding;
  final DecorationImage image;
  final String subText;
  final String mainText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: containercolor, borderRadius: BorderRadius.circular(raduis)),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: secondContanerpadding),
            height: secondContanerheight,
            width: secondContanerwidth,
            decoration: BoxDecoration(
                image: image,
                borderRadius: BorderRadius.circular(secondContanerRaduis)),
          ),
          kWidth10,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subText,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              kheight,
              Text(
                mainText,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              )
            ],
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: icon)
        ],
      ),
    );
  }
}
