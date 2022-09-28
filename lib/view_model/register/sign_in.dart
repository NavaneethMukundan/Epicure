import 'package:flutter/material.dart';

class SignInController extends ChangeNotifier {
  final signInFormKeys = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  formValidation(context, Widget screen) {
    if (signInFormKeys.currentState!.validate()) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => screen));
    } else {
      const Text('Data is Empty');
    }
  }

  bool _isHidden = false;
  get isHidden => _isHidden;
  set isHidden(value) {
    _isHidden = value;
    notifyListeners();
  }

  void disposes() {
    signInFormKeys.currentState!.reset();
    userNameController.clear();
    passwordController.clear();
    isHidden = true;
    notifyListeners();
  }
}
