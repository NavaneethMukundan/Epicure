import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:epicure/view/Favorite/widget/favorite_container.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Center(
              child: Text(
                'Favorite  Food',
                style: kTextStyleBoldEx,
              ),
            ),
            Center(
              child: Text(
                'See the list of likes of your food to order it,\n  press on the “Love” icon to remove it.',
                style: kTextStyle,
              ),
            ),
            kheight40,
            FavoriteContainerWidget(
              height: 100,
              containercolor: kGrey,
              width: 390,
              raduis: 20,
              secondContanerheight: 85,
              secondContanerwidth: 100,
              secondContanerRaduis: 20,
              secondContanerpadding: 20,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://assets.cntraveller.in/photos/60ba26c0bfe773a828a47146/4:3/w_1440,h_1080,c_limit/Burgers-Mumbai-Delivery.jpg')),
              subText: 'Non Veg',
              mainText: 'Burger mac beef',
              icon: Icon(
                Icons.favorite,
                color: mainColor,
              ),
            ),
            kheight20,
            FavoriteContainerWidget(
              height: 100,
              containercolor: kGrey,
              width: 390,
              raduis: 20,
              secondContanerheight: 85,
              secondContanerwidth: 100,
              secondContanerRaduis: 20,
              secondContanerpadding: 20,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Pizza-from-Scratch_EXPS_FT20_8621_F_0505_1_home.jpg')),
              subText: 'Non Veg',
              mainText: 'Hawaiian Pizza',
              icon: Icon(
                Icons.favorite,
                color: mainColor,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
