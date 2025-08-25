import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  final String restaurantId;

  const RestaurantScreen({super.key, required this.restaurantId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Restaurant $restaurantId')),
      body: Center(child: Text('Details for Restaurant ID: $restaurantId')),
    );
  }
}
