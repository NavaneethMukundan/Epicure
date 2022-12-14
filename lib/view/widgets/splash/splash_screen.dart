import 'package:epicure/utils/routes.dart';
import 'package:epicure/view/widgets/onboard/onboard.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Screenshot 2022-09-13 170245.png'),
          ],
        ));
  }

  Future<void> gotoHome(context) async {
    await Future.delayed(const Duration(seconds: 3));
    RouteController.pushReplacementRoute(context, OnBoarding());
  }
}
