import 'package:flutter/material.dart';

class CautionScreen extends StatefulWidget {
  const CautionScreen({super.key});

  @override
  State<CautionScreen> createState() => _CautionScreenState();
}

class _CautionScreenState extends State<CautionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cautions',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                  ),
                ]),
            child: const Column(
              children: [
                Text(
                  'Please complete these steps before starting job',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sanitize',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hand & Mobile',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Always use',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Fresh mask & Gloves',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 50),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const FillACDetails3ServicesScreen()));*/
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
              ),
              child: const Text(
                "Start Job",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
