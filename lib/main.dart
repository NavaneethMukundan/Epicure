import 'package:epicure/view/widgets/splash/splash_screen.dart';
import 'package:epicure/view_model/home/home.dart';
import 'package:epicure/view_model/main/bottom_navigation.dart';
import 'package:epicure/view_model/register/login_signup.dart';
import 'package:epicure/view_model/register/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationController()),
        ChangeNotifierProvider(create: (_) => SignInController()),
        ChangeNotifierProvider(create: (_) => SignUpController()),
        ChangeNotifierProvider(create: (_) => HomeController()),
      ],
      child: MaterialApp(
        title: 'Epicure',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
