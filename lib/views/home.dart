import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/configs/colors.dart';
import 'package:my_first_app/views/breeds.dart';
import 'package:my_first_app/views/dashboard.dart';
import 'package:my_first_app/views/orders.dart';
import 'package:my_first_app/views/profile.dart';
var screens=[
  DashboardScreen(),
  OrdersScreen(),
  BreedsScreen(),
  ProfileScreen()
];
int position=0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: CurvedNavigationBar(
    color:Colors.white,
    backgroundColor: Colors.transparent,
    buttonBackgroundColor: primaryColor,
    items: <Widget>[
      Icon(Icons.pets, size: 30),
      Icon(Icons.receipt_long, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.person, size: 30),

    ],
    onTap: (index) {
      setState(() {
        position=index;
      });
      //Handle button tap
    },
  ),
  body: screens[position],
);
  }
}