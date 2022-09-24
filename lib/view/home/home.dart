import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:epicure/view/display/restaurant_display/restaurant_disply.dart';
import 'package:epicure/view/home/widgets/container_food_restaurants.dart';
import 'package:epicure/view/home/widgets/custom_container.dart';
import 'package:epicure/view/log/login/widgets/custom_field.dart';
import 'package:epicure/view_model/tool_models/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RouteController>(context, listen: false);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            kheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/en/f/fe/Glenn_Quagmire.png'),
                          fit: BoxFit.contain),
                      color: kBlack,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Image.network(
                  'https://www.citypng.com/public/uploads/preview/hd-settings-black-line-icon-png-11640542802zybarymqkq.png',
                  height: 40,
                )
              ],
            ),
            kheight20,
            const Text(
              'Hi, user!',
              style: kTextStyleBold,
            ),
            Row(
              children: [
                const Text(
                  'Deliver to ',
                  style: kTextStyle2,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Location ⌄',
                    style: TextStyle(fontSize: 20, color: mainColor),
                  ),
                ),
              ],
            ),
            kheight,
            const TextFormWidget(
              icon: Icons.search_outlined,
              hintText: 'Search for Food or Restaurant',
              iconsize: 25,
              textHeight: 20,
              padding: 20,
              color: kBlack,
              iconcolor: kGrey,
              radius: 30,
            ),
            kheight20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomContainerWidget(
                    height: 50,
                    width: 114,
                    containerColor: kBlack,
                    raidus: 25,
                    image: Image.asset(
                      'assets/images/89-891470_open-junk-food-illustration-png.png',
                      height: 22,
                    ),
                    text: 'Fast Food',
                    fontsize: 17,
                    textColor: kWhite,
                  ),
                  kWidth,
                  CustomContainerWidget(
                    height: 50,
                    width: 114,
                    containerColor: kBlack,
                    raidus: 25,
                    image: Image.asset(
                      'assets/images/vector-breakfast-illustration-removebg-preview.png',
                      height: 35,
                    ),
                    text: 'Breakfast',
                    fontsize: 17,
                    textColor: kWhite,
                  ),
                  kWidth,
                  CustomContainerWidget(
                    height: 50,
                    width: 114,
                    containerColor: kBlack,
                    raidus: 25,
                    image: Image.asset(
                      'assets/images/colorful-round-tasty-pizza_1284-10219-removebg-preview.png',
                      height: 40,
                    ),
                    text: 'Pizza',
                    fontsize: 17,
                    textColor: kWhite,
                  ),
                  kWidth10,
                  CustomContainerWidget(
                    height: 50,
                    width: 114,
                    containerColor: kBlack,
                    raidus: 25,
                    image: Image.asset(
                      'assets/images/cola_53876-25487-removebg-preview.png',
                      height: 40,
                    ),
                    text: 'Drinks',
                    fontsize: 17,
                    textColor: kWhite,
                  ),
                ],
              ),
            ),
            kheight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Restaurant',
                  style: kTextStyleBoldEx,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(color: mainColor),
                    ))
              ],
            ),
            kheight20,
            Row(
              children: [
                AdsContainer(
                  height: 230,
                  width: 180,
                  containerColor: kWhite,
                  raidus: 20,
                  subfontsize: 15,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://blogs.revv.co.in/blogs/wp-content/uploads/2020/09/Shala-Restaurant-1024x768.jpg')),
                  text: 'Veg & Non Veg',
                  subText: 'Shala Restaurant',
                  fontsize: 25,
                  textColor: kBlack,
                  ontap: () {
                    provider.pushRoute(context, const RestaurantViewScreen());
                  },
                ),
                kWidth10,
                AdsContainer(
                  height: 230,
                  width: 180,
                  containerColor: kWhite,
                  raidus: 20,
                  subfontsize: 15,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://www.revv.co.in/blogs/wp-content/uploads/2020/09/Grand-Pavilion-Kerala.jpg',
                      )),
                  text: 'Veg & Non Veg',
                  subText: 'Grand Pavilion',
                  fontsize: 25,
                  textColor: kBlack,
                  ontap: () {
                    provider.pushRoute(context, const RestaurantViewScreen());
                  },
                ),
              ],
            ),
            kheight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Popular ',
                  style: kTextStyleBoldEx,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(color: mainColor),
                    ))
              ],
            ),
            kheight,
            Row(
              children: [
                AdsContainer(
                  height: 230,
                  width: 180,
                  containerColor: kWhite,
                  raidus: 20,
                  subfontsize: 15,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://assets.cntraveller.in/photos/60ba26c0bfe773a828a47146/4:3/w_1440,h_1080,c_limit/Burgers-Mumbai-Delivery.jpg')),
                  text: 'Cheesy Mozarella',
                  subText: 'Beef Burger',
                  fontsize: 25,
                  textColor: kBlack,
                  ontap: () {},
                ),
                kWidth10,
                AdsContainer(
                  height: 230,
                  width: 180,
                  containerColor: kWhite,
                  raidus: 20,
                  subfontsize: 15,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Pizza-from-Scratch_EXPS_FT20_8621_F_0505_1_home.jpg',
                      )),
                  text: 'Mixed Pizza',
                  subText: 'Hawaiian Pizza',
                  fontsize: 25,
                  textColor: kBlack,
                  ontap: () {},
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }
}
