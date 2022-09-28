import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:epicure/utils/routes.dart';
import 'package:flutter/material.dart';

class RestaurantViewScreen extends StatelessWidget {
  const RestaurantViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                    'https://img.freepik.com/premium-vector/restaurant-interior-concept-apartment-with-furniture-tables-with-chairs-drinks-food-counter-bottle-cabinet-wall-decor-plants-vector-illustration-background-flat-cartoon-design_198565-1058.jpg?w=2000'),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: IconButton(
                      onPressed: () {
                        RouteController.popupRoute(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: kWhite,
                        size: 40,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 150),
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      color: kWhite, borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      kheight,
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://blogs.revv.co.in/blogs/wp-content/uploads/2020/09/Shala-Restaurant-1024x768.jpg',
                          height: 100,
                        ),
                      ),
                      const Text(
                        'Shala Restaurant',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      kheight20,
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          children: const [
                            ItemContainer(
                              text: 'Meal',
                            ),
                            kWidth20,
                            ItemContainer(text: 'Amirican'),
                            kWidth20,
                            ItemContainer(text: 'Fast Food')
                          ],
                        ),
                      ),
                      kheight,
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.delivery_dining_outlined,
                              color: mainColor,
                              size: 38,
                            ),
                            kWidth10,
                            Text(
                              'Free Delivery',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Icon(
                              Icons.timer,
                              color: mainColor,
                              size: 28,
                            ),
                            kWidth10,
                            Text(
                              '10-20 min',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            kheight20,
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Feature Items',
                style: kTextStyleBold,
              ),
            ),
            kheight20,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: FeatureItems(
                        imgae: DecorationImage(
                            image: NetworkImage(
                                'https://assets.bonappetit.com/photos/631b47270d376dca32f93400/4:3/w_2664,h_1998,c_limit/0909-seo-baked-ziti-lede.jpg')),
                        amount: '₹ 250',
                        text: "BA's Best Baked Ziti",
                      )),
                  kWidth10,
                  FeatureItems(
                    imgae: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://hot-thai-kitchen.com/wp-content/uploads/2021/11/chili-garlic-noodles-blog.jpg')),
                    amount: '₹ 300',
                    text: "Chili Garlic Noodles",
                  ),
                  kWidth10,
                  FeatureItems(
                    imgae: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://hot-thai-kitchen.com/wp-content/uploads/2021/11/chili-garlic-noodles-blog.jpg')),
                    amount: '₹ 300',
                    text: "Chili Garlic Noodles",
                  )
                ],
              ),
            ),
            kheight,
          ],
        ),
      ),
    );
  }
}

class FeatureItems extends StatelessWidget {
  const FeatureItems({
    Key? key,
    required this.imgae,
    required this.amount,
    required this.text,
  }) : super(key: key);

  final DecorationImage imgae;
  final String amount;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: imgae,
            )),
        Container(
          margin: const EdgeInsets.only(left: 15, top: 10),
          height: 35,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kWhite),
          child: Center(
            child: Text(
              amount,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Container(
            height: 30,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2), color: kWhite),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: kBlack),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 236, 236),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
    );
  }
}
