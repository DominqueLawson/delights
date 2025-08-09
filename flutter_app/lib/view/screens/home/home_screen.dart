import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text('Deliver Eats')),
      body: ListView.builder(
        itemCount: viewModel.restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = viewModel.restaurants[index];
          return ListTile(
            title: Text(restaurant.name),
            subtitle: Text(restaurant.location),
            leading: Image.network(restaurant.imageUrl),
          );
        },
      ),
    );
  }
}
