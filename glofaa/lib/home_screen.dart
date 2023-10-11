import 'package:flutter/material.dart';
import 'package:glofaa/bottom_around_you_page.dart';
import 'package:glofaa/bottom_cult_page.dart';
import 'package:glofaa/bottom_progress_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List pages = const [
    BottomProgressPage(),
    BottomAroundYouPage(),
    BottomCultPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (selectedIndex) {
            setState(() {
              currentIndex = selectedIndex;
            });
          },
          selectedFontSize: 13,
          unselectedFontSize: 13,
          selectedIconTheme:
              const IconThemeData(color: Color.fromRGBO(147, 76, 234, 1)),
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.pending_outlined,
                ),
                label: "Progress"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 1.5, bottom: 3.0),
                  child: Image.asset("assets/images/around_you.png",
                      width: 19.2,
                      height: 19.0,
                      color: (currentIndex == 1)
                          ? const Color.fromRGBO(147, 76, 234, 1)
                          : Colors.grey.shade600),
                ),
                label: "Around You"),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 3.8),
                  child: Image.asset("assets/images/cult.png",
                      width: 20,
                      height: 19,
                      color: (currentIndex == 2)
                          ? const Color.fromRGBO(147, 76, 234, 1)
                          : Colors.grey.shade600),
                ),
                label: "Cult"),
          ]),
      body: pages[currentIndex],
    );
  }
}
