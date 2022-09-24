import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Text(
                'My Order',
                style: kTextStyleBoldEx,
              ),
            ),
            kheight40,
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://assets.cntraveller.in/photos/60ba26c0bfe773a828a47146/4:3/w_1440,h_1080,c_limit/Burgers-Mumbai-Delivery.jpg',
                        height: 80,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    kWidth20,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Burger mac beef',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Mixed burger',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '₹ 260',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: mainColor),
                        )
                      ],
                    ),
                    kWidth20,
                    CounterContainer(
                      symbol: '−',
                      onTap: () {},
                    ),
                    kWidth10,
                    const Text(
                      '1',
                      style: kTextStyle2,
                    ),
                    kWidth10,
                    CounterContainer(
                      symbol: '+',
                      onTap: () {},
                    )
                  ]),
                );
              },
              itemCount: 2,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1,
                );
              },
            ),
          ],
        ),
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: kWhite,
            child: Column(
              children: [
                kheight,
                const MySeparator(),
                kheight20,
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Delivery Charge:',
                        style: kTextStyle2,
                      ),
                      Text(
                        '₹ 20',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      )
                    ],
                  ),
                ),
                kheight20,
                Container(
                  height: 79,
                  width: double.infinity,
                  color: mainColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 20),
                        child: Column(
                          children: const [
                            kheight,
                            Text(
                              'Total Price',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kWhite),
                            ),
                            Text('₹ 540.0',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: kWhite))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: kWhite,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            child: const Text('Checkout',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: kBlack))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CounterContainer extends StatelessWidget {
  const CounterContainer({
    Key? key,
    required this.symbol,
    required this.onTap,
  }) : super(key: key);
  final String symbol;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: mainColor),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 4),
          child: Text(
            symbol,
            style: const TextStyle(
                color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = kGrey})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
