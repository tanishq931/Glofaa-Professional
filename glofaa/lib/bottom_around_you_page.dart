import 'package:flutter/material.dart';

class BottomAroundYouPage extends StatelessWidget {
  const BottomAroundYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Around You Page",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 24),
        ),
      ),
    );
  }
}
