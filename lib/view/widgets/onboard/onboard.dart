import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/routes.dart';
import 'package:epicure/view/register/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({Key? key}) : super(key: key);

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    void _onIntroEnd(context) {
      RouteController.pushReplacementRoute(context, const LoginScreen());
    }

    final bodyStyle = TextStyle(
        fontSize: 19.0,
        fontFamily: GoogleFonts.lato(fontWeight: FontWeight.w400).fontFamily);

    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          color: mainColor,
          fontFamily:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold).fontFamily),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: kWhite,
      imagePadding: const EdgeInsets.only(bottom: 19),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: kWhite,
      pages: [
        PageViewModel(
          title: "Find Your Favorite Food",
          body:
              "Find the best Restaurant and choose\n your most favorite food to eat",
          image: Image.asset('assets/images/food menu 1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Extra Fast Delivery",
          body:
              "Your food will be delivered quickly\nto your housr or office or wherever\n you want ",
          image: Image.asset('assets/images/food menu 2.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Enjoy Great Food",
          body:
              "Enjoy your favorite food. You will\nreceive the food within few minutes",
          image: Image.asset('assets/images/food menu 3.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip',
          style: TextStyle(fontWeight: FontWeight.w600, color: mainColor)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: mainColor, fontSize: 25)),
      curve: Curves.fastLinearToSlowEaseIn,
      nextStyle:
          ButtonStyle(foregroundColor: MaterialStateProperty.all(mainColor)),
      backStyle:
          ButtonStyle(foregroundColor: MaterialStateProperty.all(kBlack)),
      controlsMargin: const EdgeInsets.only(bottom: 180, left: 50, right: 50),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
          activeColor: mainColor,
          size: Size(10.0, 10.0),
          color: kBlack,
          //Color(0xFFBDBDBD),
          activeSize: Size(30.0, 15.0),
          activeShape: CircleBorder()),
    );
  }
}
