import 'package:flutter/material.dart';
import 'package:flutter_app/feature/home/presentation/view_models/home_view_model.dart';
import 'package:provider/provider.dart';

import '../../../restaurant/presentation/ui_components/resturant_card';
import '../ui_components/catagory_chip_row';
import '../ui_components/filter_chips_row';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(96),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("9:41", style: Theme.of(context).textTheme.bodySmall),
                    const Spacer(),
                    const Icon(Icons.signal_cellular_alt_outlined, size: 18),
                    const SizedBox(width: 6),
                    const Icon(Icons.wifi, size: 18),
                    const SizedBox(width: 6),
                    const Icon(Icons.battery_full, size: 18),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: vm.searchCtrl,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: cs.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.dashboard_customize_rounded,
                        color: cs.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FilterChipsRow(filters: vm.filters),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 12, 0, 8),
              child: CategoryChipRow(categories: vm.categories),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: Text(
                "Restaurants",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: vm.restaurants.length,
            itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: RestaurantCard(
                restaurant: vm.restaurants[i],
                onFavorite: () => vm.toggleFavorite(i),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentTab,
        onDestinationSelected: (i) => setState(() => _currentTab = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),
          NavigationDestination(icon: Icon(Icons.person_outline), label: ""),
          NavigationDestination(icon: Icon(Icons.favorite_border), label: ""),
        ],
      ),
    );
  }
}
