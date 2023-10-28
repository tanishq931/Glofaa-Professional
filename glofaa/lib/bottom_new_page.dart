import 'package:flutter/material.dart';

class BottomNewScreen extends StatelessWidget {
  const BottomNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "New Page",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 24),
        ),
      ),
    );
  }
}
