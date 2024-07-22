import 'package:flutter/material.dart';
import 'package:sneakershopping_flutter/components/bottom_nav_bar.dart';
import 'package:sneakershopping_flutter/pages/cart_page.dart';
import 'package:sneakershopping_flutter/pages/shop_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),

    const CartPage(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
      body: _pages[_selectedIndex],
    );
  }
}
