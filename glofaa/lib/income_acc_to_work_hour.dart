import 'package:flutter/material.dart';

import 'home_screen.dart';

class IncomeSetupScreen extends StatefulWidget {
  const IncomeSetupScreen({super.key});

  @override
  State<IncomeSetupScreen> createState() => _IncomeSetupScreenState();
}

class _IncomeSetupScreenState extends State<IncomeSetupScreen> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            color: const Color.fromRGBO(245, 237, 255, 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  color: const Color.fromRGBO(147, 76, 234, 1),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: 100,
                          height: 60,
                          child: (selected == 3)
                              ? Image.asset(
                                  "assets/images/inc_img3.jpg",
                                )
                              : (selected == 2)
                                  ? Image.asset("assets/images/inc_img2.jpg")
                                  : Image.asset("assets/images/inc_img1.png")),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "You can earn upto",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.currency_rupee_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              (selected == 3)
                                  ? "9,00,000"
                                  : (selected == 2)
                                      ? "3,00,000"
                                      : "1,00,000",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 30),
                            ),
                          ]),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Per Month",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.info_outline_rounded,
                              //FontAwesomeIcons.ellipsis,
                              color: Colors.white,
                              size: 18,
                            ),
                          ]),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Your work every day for 4 hrs..",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customRadioButton("4 hrs", 1),
                    const SizedBox(
                      width: 15,
                    ),
                    customRadioButton("6 hrs", 2),
                    const SizedBox(
                      width: 15,
                    ),
                    customRadioButton("8 hrs", 3),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Continue",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customRadioButton(String name, int index) {
    return SizedBox(
      height: 32,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        style: (selected == index)
            ? ElevatedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            : OutlinedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                side: const BorderSide(
                    color: Color.fromRGBO(147, 76, 234, 1), width: 1.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
        child: Text(name,
            style: TextStyle(
                color: (selected == index)
                    ? Colors.white
                    : const Color.fromRGBO(147, 76, 234, 1),
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15)),
      ),
    );
  }
}
