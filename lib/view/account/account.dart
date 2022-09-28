import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                    child: Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: mainColor,
                      child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/f/fe/Glenn_Quagmire.png'),
                    ),
                    const Text(
                      'Glenn Quagmire ',
                      style: kTextStyleBold,
                    ),
                    const Text(
                      'Glenn@gmail.com',
                      style: kTextStyle2,
                    )
                  ],
                )),
              ),
              kheight20,
              Container(
                height: 85,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25), color: kBlack),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: const [
                          Text(
                            'Order',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kWhite),
                          ),
                          Text(
                            '0',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kWhite),
                          )
                        ],
                      ),
                    ),
                    const RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          '____________',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: kWhite),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: const [
                          Text(
                            'Spend',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kWhite),
                          ),
                          Text(
                            '₹ 0',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kWhite),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kheight50,
              SettingContainer(
                image: Image.asset(
                  'assets/images/order-list-icon-vector-37719124-removebg-preview.png',
                  height: 50,
                ),
                text: 'Order History',
                leftPadding: 10,
              ),
              kheight20,
              SettingContainer(
                image: Image.asset(
                  'assets/images/free-settings-icon-3110-thumb.png',
                  height: 30,
                ),
                text: 'Settings',
                leftPadding: 15,
              ),
              kheight20,
              SettingContainer(
                image: Image.asset(
                  'assets/images/quick-access-faq.png',
                  height: 45,
                ),
                text: 'FAQ',
                leftPadding: 8,
              ),
              kheight20,
              SettingContainer(
                image: Image.asset(
                  'assets/images/1250988.png',
                  height: 25,
                ),
                text: 'Order History',
                leftPadding: 15,
              ),
              kheight
            ]),
          ),
        ),
      ),
    );
  }
}

class SettingContainer extends StatelessWidget {
  const SettingContainer({
    Key? key,
    required this.image,
    required this.text,
    required this.leftPadding,
  }) : super(key: key);

  final Image image;
  final String text;
  final double leftPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 390,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: kGrey),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: leftPadding),
            child: image,
          ),
          kWidth10,
          Padding(
            padding: EdgeInsets.only(
              left: leftPadding,
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
