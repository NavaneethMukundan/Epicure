import 'package:flutter/material.dart';

class RouteController with ChangeNotifier {
  pushRoute(context, Widget screen) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) => screen)));
  }

  popupRoute(context) {
    Navigator.of(context).pop();
  }

  pushReplacementRoute(context, Widget screen) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: ((context) => screen)));

    // Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: ((context) => const SignUpScreen())));
  }
}
