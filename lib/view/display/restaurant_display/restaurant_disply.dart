import 'package:flutter/material.dart';

class RestaurantViewScreen extends StatelessWidget {
  const RestaurantViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              'https://img.freepik.com/premium-vector/restaurant-interior-concept-apartment-with-furniture-tables-with-chairs-drinks-food-counter-bottle-cabinet-wall-decor-plants-vector-illustration-background-flat-cartoon-design_198565-1058.jpg?w=2000')
        ],
      ),
    );
  }
}
