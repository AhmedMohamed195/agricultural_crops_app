import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';

import '../../../home/presentation/screen/home_screen.dart';
import '../widgets/custom_button_nav_bar.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    Center(child: Text(LocaleKeys.orders.tr())),
    Center(child: Text(LocaleKeys.favorites.tr())),
    Center(child: Text(LocaleKeys.profile.tr())),
  ];
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}
