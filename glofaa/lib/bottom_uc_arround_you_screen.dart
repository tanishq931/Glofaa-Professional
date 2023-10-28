import 'package:flutter/material.dart';

class BottomUCAroundYouScreen extends StatelessWidget {
  const BottomUCAroundYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "UC Around You Page",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 24),
        ),
      ),
    );
  }
}