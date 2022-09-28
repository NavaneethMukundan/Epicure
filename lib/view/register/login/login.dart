import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:epicure/view/home/home.dart';
import 'package:epicure/view/register/login/widgets/custom_buton.dart';
import 'package:epicure/view/register/login/widgets/custom_field.dart';
import 'package:epicure/view/register/signup/signup.dart';
import 'package:epicure/view_model/register/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final signInController =
        Provider.of<SignInController>(context, listen: false);
    return Scaffold(
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55.0),
                          topRight: Radius.circular(55.0),
                        ),
                        color: kWhite),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Form(
                          key: signInController.signInFormKeys,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kheight50,
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text("Let's get Something",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w800,
                                        ).fontFamily)),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Good to see you back.',
                                  style: kTextStyle2,
                                ),
                              ),
                              kheight20,
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //   print('Google Login');
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png'))),
                                      ),
                                    ),
                                    kWidth,
                                    GestureDetector(
                                      onTap: () {
                                        // print('Facebook Login');
                                      },
                                      child: Container(
                                        height: 42,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/800px-Facebook_Logo_%282019%29.png'))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              kheight20,
                              TextFormWidget(
                                  controller:
                                      signInController.userNameController,
                                  padding: 25,
                                  icon: Icons.person_outline_rounded,
                                  hintText: 'User Name',
                                  iconsize: 26,
                                  textHeight: 15,
                                  color: mainColor,
                                  iconcolor: kBlack,
                                  radius: 30),
                              kheight20,
                              Consumer<SignInController>(
                                  builder: (context, value, child) {
                                return TextFormWidget(
                                    controller:
                                        signInController.passwordController,
                                    padding: 25,
                                    icon: Icons.key_rounded,
                                    sufixIcon: IconButton(
                                        onPressed: () {
                                          signInController.isHidden =
                                              !signInController.isHidden;
                                        },
                                        icon: Icon(signInController.isHidden
                                            ? Icons.visibility_off
                                            : Icons.visibility)),
                                    hintText: 'Password',
                                    iconsize: 25,
                                    textHeight: 15,
                                    color: mainColor,
                                    iconcolor: kBlack,
                                    radius: 30);
                              }),
                              kheight,
                              Center(
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forget your Password?',
                                      style: TextStyle(
                                          fontSize: 16, color: mainColor),
                                    )),
                              ),
                              kheight,
                              Center(
                                child: CustomButton(
                                  text: 'Sign In',
                                  height: 60,
                                  width: 260,
                                  fontsize: 20,
                                  color: kWhite,
                                  ontap: () {
                                    signInController.formValidation(
                                        context, const HomeScreeen());
                                  },
                                ),
                              ),
                              kheight20,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Don’t have Account?',
                                    style: kTextStyle,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUpScreen()));
                                        signInController.disposes();
                                      },
                                      child: const Text(
                                        'Sign Up',
                                        style: TextStyle(
                                            fontSize: 20, color: mainColor),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
