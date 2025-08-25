import 'package:flutter/material.dart';

import '../../../restaurant/data/models/restaurant_model.dart';
import '../../data/models/category_model';

class HomeViewModel extends ChangeNotifier {
  final TextEditingController searchCtrl = TextEditingController();
  final List<String> filters = ["Open Now", "Deals", "Price", "Ratings"];
  final List<FoodCategory> categories = [
    FoodCategory(name: "Fast Food", icon: Icons.lunch_dining),
    FoodCategory(name: "Mexican", icon: Icons.local_dining),
    FoodCategory(name: "Pizza", icon: Icons.local_pizza),
    FoodCategory(name: "Healthy", icon: Icons.eco),
    FoodCategory(name: "Sushi", icon: Icons.set_meal),
  ];

  List<Restaurant> _restaurants = [];
  List<Restaurant> get restaurants => _restaurants;

  // Simulate init/fetch
  Future<void> load() async {
    _restaurants = [
      Restaurant(
        name: "Chick-Fill-A",
        imageUrl:
            "https://images.unsplash.com/photo-1550547660-d9450f859349?q=80&w=1600&auto=format&fit=crop",
        rating: 4.5,
      ),
      Restaurant(
        name: "Wendy's",
        imageUrl:
            "https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1600&auto=format&fit=crop",
        rating: 3.8,
      ),
      Restaurant(
        name: "Pizza Palace",
        imageUrl:
            "https://images.unsplash.com/photo-1601924582971-028a07cb67f9?q=80&w=1600&auto=format&fit=crop",
        rating: 4.2,
      ),
    ];
    notifyListeners();
  }

  void toggleFavorite(int index) {
    _restaurants[index] = _restaurants[index].copyWith(
      isFavorite: !_restaurants[index].isFavorite,
    );
    notifyListeners();
  }
}
