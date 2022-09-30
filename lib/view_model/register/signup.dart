import 'package:epicure/model/signup_model/signup_model.dart';
import 'package:epicure/model/signup_model/signup_response.dart';
import 'package:epicure/repository/register/signup_repo.dart';
import 'package:epicure/utils/routes.dart';
import 'package:epicure/utils/snackbar.dart';
import 'package:epicure/view/widgets/navigation/navigation.dart';
import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  final signUpFormKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isLoading = false;

  signupButton(context) async {
    if (signUpFormKey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      final modelObj = SignupModel(
          confirmPassword: confirmPasswordController.text,
          password: passwordController.text,
          name: userNameController.text,
          email: emailController.text,
          role: "ROLE_USER");
      SignupResponse? signupResponse = await SignupRepo().signup(modelObj);
      if (signupResponse == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('No Response'));
        _isLoadingFalse();
        return;
      } else if (signupResponse.message == "true") {
        RouteController.pushReplacementRoute(context, BottomNavigation());
        _isLoadingFalse();
      } else if (signupResponse.message != "true") {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp("${signupResponse.message}"));
        _isLoadingFalse();
        return;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('Something went wrong !!!'));
        _isLoadingFalse();
      }
    }
  }

  // formValidation(context, Widget screen) {
  //   if (signUpFormKey.currentState!.validate()) {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (ctx) => screen));
  //   } else {
  //     const Text('Data is Empty');
  //   }
  // }

  bool _isHidden = false;
  get isHidden => _isHidden;
  set isHidden(value) {
    _isHidden = value;
    notifyListeners();
  }

  void _isLoadingFalse() {
    isLoading = false;
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
