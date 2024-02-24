import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meesho/screens/categories.dart';
import 'package:meesho/screens/homescreen.dart';
import 'package:meesho/screens/mall.dart';
import 'package:meesho/screens/myorders.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageList = [
    HomeScreen(),
    CategoriesScreen(),
    MallScreen(),
    MyordersScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: pageList[_selectedIndex], // Display the selected page
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff582244),
          unselectedItemColor: Colors.black, // Set unselected icon color
          iconSize: 28.0, // Set icon size
          selectedFontSize: 12.0, // Set selected text size
          unselectedFontSize: 12.0, // Set unselected text size
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Mall'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'My Orders'),
          ],
          
          onTap: (index) {
            // Update the selected index when a tab is tapped
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
