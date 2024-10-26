import 'package:flutter/material.dart';

import 'home/home_screen.dart';
import 'offset/offset_screen.dart';
import 'profile/profile_screen.dart';
import 'transaction/transaction_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  void onTapImplemented(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    const TransactionsScreen(),
    const OffsetScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 146, 138, 138),
        selectedFontSize: 0,
        currentIndex: selectedIndex,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: onTapImplemented,
      ),
    );
  }
}
