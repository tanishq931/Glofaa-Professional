import 'package:flutter/material.dart';

class BottomProgressPage extends StatelessWidget {
  const BottomProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Progress Page",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 24),
        ),
      ),
    );
  }
}
