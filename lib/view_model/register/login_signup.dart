import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  final signUpFormKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  formValidation(context, Widget screen) {
    if (signUpFormKey.currentState!.validate()) {
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

  void disposeS() {
    signUpFormKey.currentState!.reset();
    userNameController.clear();
    passwordController.clear();
    emailController.clear();
    confirmPasswordController.clear();
    isHidden = true;
    notifyListeners();
  }
}
