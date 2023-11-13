import 'package:flutter/material.dart';
import 'package:glofaa/bottom_new_page.dart';
import 'package:glofaa/bottom_profile_progress_screen.dart';
import 'package:glofaa/bottom_uc_arround_you_screen.dart';

class CompleteTrainingAndProfileScreen extends StatefulWidget {
  const CompleteTrainingAndProfileScreen({super.key});

  @override
  State<CompleteTrainingAndProfileScreen> createState() =>
      _CompleteTrainingAndProfileScreenState();
}

class _CompleteTrainingAndProfileScreenState
    extends State<CompleteTrainingAndProfileScreen> {
  int _currentIndex = 0;

  List bottomPages = const [
    BottomNewScreen(),
    BottomProfileProgressScreen(),
    BottomUCAroundYouScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.translate_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {
              /* Navigator.push(context, MaterialPageRoute(builder: (context) => LiveTrainingScreen()));*/
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.pending_outlined),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile Progress"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined), label: "UC Around You"),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
      ),
      body: bottomPages[_currentIndex],
    );
  }
}
