import 'package:florbloom_app/card_detail.dart';
import 'package:florbloom_app/cart.dart';
import 'package:florbloom_app/forgot_password.dart';
import 'package:florbloom_app/noti.dart';
import 'package:florbloom_app/screens/home_screen.dart';
import 'package:florbloom_app/screens/splash_page.dart';
import 'package:florbloom_app/signin.dart';
import 'package:florbloom_app/signup.dart';
import 'package:florbloom_app/users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
final screens = [
  HomePage(),
  CartPage(),
  Noti(),
  Users(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color.fromRGBO(164, 159, 91, 1),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFf1f5fb),
          selectedIndex: index,
          animationDuration: Duration(seconds: 300),
           onDestinationSelected: (index) => setState(() => this.index = index),

          destinations: [
            NavigationDestination(icon: Icon(Icons.home), 
            selectedIcon: Icon(Icons.home),
            label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shopping_bag),
            selectedIcon: Icon(Icons.shopping_bag), 
            label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.notification_add),
            selectedIcon: Icon(Icons.notification_add),
             label: 'Notificattion'),
            NavigationDestination(icon: Icon(Icons.person),
             label: 'User'),
          ],
         
          
        ),
      ),
    );
  }
}