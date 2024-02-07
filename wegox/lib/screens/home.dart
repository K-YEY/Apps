import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'driver_screens/tab_earning.dart';
import 'driver_screens/tab_home.dart';
import 'driver_screens/tab_ratting.dart';
import 'driver_screens/tab_setting.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  int navIndex = 0;
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          HomeTabScreen(),
          EarningTabScreen(),
          RattingTabScreen(),
          SettingsTabScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: navIndex,
        onDestinationSelected: (index) {
          navIndex = index;
          tabController!.index = index;
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
