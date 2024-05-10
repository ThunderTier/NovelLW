import 'package:flutter/material.dart';
import 'package:novel_lw/novel/presentation/views/views.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _currentIndex = 0;
  List bottomScreen = [
    const HomeView(),
    const FavoriteView(),
    const SearchView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: bottomScreen[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        backgroundColor: Theme.of(context).colorScheme.background,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(_currentIndex == 0 ? Icons.home : Icons.home_outlined),
            title: const Text("Home"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),

          /// Favorite
          SalomonBottomBarItem(
            icon: Icon(_currentIndex == 1 ? Icons.favorite : Icons.favorite_outline),
            title: const Text("Favorite"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(_currentIndex == 2 ? Icons.search : Icons.search_outlined),
            title: const Text("Search"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),

          /// Settings
          SalomonBottomBarItem(
            icon: Icon(_currentIndex == 3 ? Icons.settings : Icons.settings_outlined),
            title: const Text("Settings"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
