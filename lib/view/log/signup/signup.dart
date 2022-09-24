import 'package:epicure/utils/colors.dart';
import 'package:epicure/utils/constraints.dart';
import 'package:epicure/view/log/login/login.dart';
import 'package:epicure/view/log/login/widgets/custom_buton.dart';
import 'package:epicure/view/log/login/widgets/custom_field.dart';
import 'package:epicure/view/widgets/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0),
                        ),
                        color: kWhite),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kheight50,
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text("Getting Started",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w800,
                                      ).fontFamily)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Create account to continue!',
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
                                      print('Google Login');
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
                                      print('Facebook Login');
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
                            const TextFormWidget(
                              icon: Icons.person_outline_rounded,
                              hintText: 'User Name',
                              iconsize: 25,
                              textHeight: 15,
                              padding: 20,
                              color: mainColor,
                              radius: 30,
                              iconcolor: kBlack,
                            ),
                            kheight20,
                            const TextFormWidget(
                                icon: Icons.email_outlined,
                                hintText: 'Email',
                                iconsize: 25,
                                textHeight: 15,
                                padding: 20,
                                color: mainColor,
                                iconcolor: kBlack,
                                radius: 30),
                            kheight20,
                            const TextFormWidget(
                                icon: Icons.key_rounded,
                                hintText: 'Password',
                                iconsize: 25,
                                textHeight: 15,
                                padding: 20,
                                color: mainColor,
                                iconcolor: kBlack,
                                radius: 30),
                            kheight20,
                            const TextFormWidget(
                                icon: Icons.lock_outlined,
                                hintText: 'Confirm Password',
                                iconsize: 25,
                                textHeight: 15,
                                padding: 20,
                                color: mainColor,
                                iconcolor: kBlack,
                                radius: 30),
                            kheight50,
                            Center(
                              child: CustomButton(
                                text: 'Sign up',
                                width: 260,
                                height: 60,
                                fontsize: 20,
                                color: kWhite,
                                ontap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => BottomNavigation()));
                                },
                              ),
                            ),
                            kheight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an Account?',
                                  style: kTextStyle,
                                ),
                                kWidth,
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                                  const LoginScreen()));
                                    },
                                    child: const Text('Sign In',
                                        style: TextStyle(
                                            fontSize: 20, color: mainColor)))
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
