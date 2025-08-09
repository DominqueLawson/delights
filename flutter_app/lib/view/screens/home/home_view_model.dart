import 'package:flutter/material.dart';
import '../../../data/models/restaurant.dart';

class HomeViewModel extends ChangeNotifier {
  List<Restaurant> _restaurants = [];

  List<Restaurant> get restaurants => _restaurants;

  Future<void> fetchRestaurants() async {
    // mock data for now
    await Future.delayed(Duration(seconds: 1));
    _restaurants = [
      Restaurant(
        id: '1',
        name: 'Taco Bar',
        location: 'Terminal 2',
        imageUrl: 'https://example.com/img1.png',
      ),
    ];
    notifyListeners();
  }
}
