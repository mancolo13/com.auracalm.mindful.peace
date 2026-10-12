import 'package:flutter/material.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _idx = 0;
  final _tabs = const [Tab1Screen(), Tab2Screen(), Tab3Screen(), Tab4Screen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _idx, children: _tabs),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _idx,
        onDestinationSelected: (i) => setState(() => _idx = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.self_improvement_outlined), selectedIcon: Icon(Icons.self_improvement), label: 'Pranayama'),
          NavigationDestination(icon: Icon(Icons.graphic_eq_outlined), selectedIcon: Icon(Icons.graphic_eq), label: 'Chimes'),
          NavigationDestination(icon: Icon(Icons.spa_outlined), selectedIcon: Icon(Icons.spa), label: 'Journal'),
          NavigationDestination(icon: Icon(Icons.auto_stories_outlined), selectedIcon: Icon(Icons.auto_stories), label: 'Wisdom'),
        ],
      ),
    );
  }
}
