import 'package:epicure/model/login_model/login_model.dart';
import 'package:epicure/model/login_model/login_response.dart';
import 'package:epicure/repository/register/signin_repo.dart';
import 'package:epicure/utils/routes.dart';
import 'package:epicure/utils/snackbar.dart';
import 'package:epicure/view/widgets/navigation/navigation.dart';
import 'package:flutter/material.dart';

class SignInController extends ChangeNotifier {
  final signInFormKeys = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isloading = false;

  // formValidation(context, Widget screen) {
  //   if (signInFormKeys.currentState!.validate()) {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (ctx) => screen));
  //   } else {
  //     const Text('Data is Empty');
  //   }
  // }

  signInButton(context) async {
    if (signInFormKeys.currentState!.validate()) {
      isloading = true;
      notifyListeners();
      final modelObject = LoginModel(
          email: emailController.text, password: passwordController.text);
      LoginResponse? loginResponse =
          await SigninRepository().signinReop(modelObject);
      if (loginResponse == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('No Response'));
        _isLoadingFalse();
        return;
      } else if (loginResponse.message == "true") {
        return RouteController.pushReplacementRoute(
            context, BottomNavigation());
      } else if (loginResponse.message != "true") {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp("${loginResponse.message}"));
        _isLoadingFalse();
        return;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('Something went Wrong'));
        _isLoadingFalse();
      }
    }
  }

  void _isLoadingFalse() {
    isloading = false;
    notifyListeners();
  }

  bool _isHidden = false;
  get isHidden => _isHidden;
  set isHidden(value) {
    _isHidden = value;
    notifyListeners();
  }

  void disposes() {
    signInFormKeys.currentState!.reset();
    emailController.clear();
    passwordController.clear();
    isHidden = true;
    notifyListeners();
  }
}
