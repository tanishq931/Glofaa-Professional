import 'package:flutter/material.dart';
import 'package:glofaa/bottom_home_service_screen.dart';
import 'package:glofaa/bottom_money_service_screen.dart';
import 'package:glofaa/bottom_new_service_screen.dart';
import 'package:glofaa/bottom_ongoing_service_screen.dart';
import 'package:glofaa/bottom_target_service_screen.dart';

import 'menu_screen.dart';

class ServicesStatusScreen extends StatefulWidget {
  const ServicesStatusScreen({super.key});

  @override
  State<ServicesStatusScreen> createState() => _ServicesStatusScreenState();
}

class _ServicesStatusScreenState extends State<ServicesStatusScreen> {
  int _currentIndex = 0;

  List bottomPages = const [
    BottomHomeServiceScreen(),
    BottomNewServiceScreen(),
    BottomOngoingServiceScreen(),
    BottomTargetServiceScreen(),
    BottomMoneyServiceScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.sms_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outlined),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.pending_outlined),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.black54,
        selectedItemColor: const Color.fromRGBO(147, 76, 234, 1),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_card_outlined), label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_mode), label: "Ongoing"),
          BottomNavigationBarItem(
              icon: Icon(Icons.flag_circle), label: "Target"),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee_rounded), label: "Money"),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
      ),
      body: bottomPages[_currentIndex],
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
        child: const Icon(
          Icons.help,
          color: Colors.white,
        ),
      ),
    );
  }
}
