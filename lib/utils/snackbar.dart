import 'package:epicure/utils/colors.dart';
import 'package:flutter/material.dart';

class ShowDialogs {
  // bottom snackbar widget
  static SnackBar popUp(String messege) {
    return SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        backgroundColor: mainColor,
        margin: const EdgeInsets.all(10),
        content: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            messege,
            style: const TextStyle(
                letterSpacing: 2, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ));
  }

  // center aligned dialog box widget
}
