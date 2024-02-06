import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: navIndex,
        onDestinationSelected: (index) {
          print('hello${index}');
          navIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home',),
          NavigationDestination(
            icon: Icon(Iconsax.wallet_money), label: 'Earnings',),
          NavigationDestination(icon: Icon(Iconsax.star), label: 'Ratings',),
          NavigationDestination(
            icon: Icon(Iconsax.setting), label: 'Settings',),

        ],
      ),
    );
  }
}
