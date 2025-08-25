import 'package:go_router/go_router.dart';
import '../../feature/home/presentation/views/home_screen.dart';
import '../../feature/restaurant/presentation/views/restaurant_screen.dart'; // Example of another screen

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', name: 'home', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/restaurant/:id',
      name: 'restaurant',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return RestaurantScreen(restaurantId: id);
      },
    ),
  ],
);
