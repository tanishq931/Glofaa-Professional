import 'package:flutter/material.dart';

class BottomCultPage extends StatelessWidget {
  const BottomCultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Cult Page",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 24),
        ),
      ),
    );
  }
}
