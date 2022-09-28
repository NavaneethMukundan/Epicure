import 'package:flutter/material.dart';

class RouteController {
  static pushRoute(context, Widget screen) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => screen)));
  }

  static popupRoute(context) {
    Navigator.of(context).pop();
  }

  static pushReplacementRoute(context, Widget screen) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: ((context) => screen)));

    // Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: ((context) => const SignUpScreen())));
  }
}
