import 'package:epicure/utils/colors.dart';
import 'package:epicure/view/Favorite/favorite.dart';
import 'package:epicure/view/account/account.dart';
import 'package:epicure/view/cart/cart.dart';
import 'package:epicure/view/home/home.dart';
import 'package:epicure/view_model/tool_models/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);

  final _pages = [
    const HomeScreeen(),
    const FavoriteScreen(),
    const AccountScreen(),
    const CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationController>(context);
    return Scaffold(
        body: _pages[provider.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: kBlack,
          selectedItemColor: mainColor,
          //unselectedItemColor: kWhite,
          selectedFontSize: 25,
          selectedIconTheme: const IconThemeData(size: 32, color: mainColor),
          selectedLabelStyle: const TextStyle(fontSize: 20),
          unselectedLabelStyle: const TextStyle(color: kBlack),
          unselectedIconTheme: const IconThemeData(size: 28, color: kWhite),
          currentIndex: provider.currentIndex,
          onTap: (newIndex) {
            provider.currentIndex = newIndex;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: '•'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: '•'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: '•'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: '•'),
          ],
        ));
  }
}
