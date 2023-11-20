import 'package:flutter/material.dart';
import 'package:glofaa/delivery_summary_screen.dart';
import 'package:glofaa/services_status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glofaa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(147, 76, 234, 1)),
        useMaterial3: true,
      ),
      home: const MyStartPage(),
    );
  }
}

class MyStartPage extends StatefulWidget {
  const MyStartPage({super.key});

  @override
  State<MyStartPage> createState() => _MyStartPageState();
}

class _MyStartPageState extends State<MyStartPage> {
  @override
  Widget build(BuildContext context) {
    preloadImage();
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: RichText(
          text: const TextSpan(
              text: "G",
              style: TextStyle(
                  fontSize: 36,
                  color: Color.fromRGBO(147, 76, 234, 1),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
              children: <InlineSpan>[
                TextSpan(
                    text: "lofaa",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins')),
              ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Image.asset("assets/images/signIn.png"),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: 145,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DeliverySummaryScreen()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                      fontSize: 12.9,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              width: 145,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
                },
                style: OutlinedButton.styleFrom(
                    elevation: 5,
                    foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    side: const BorderSide(
                        color: Color.fromRGBO(147, 76, 234, 1), width: 1.1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "NEW ACCOUNT",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 12.9,
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: 135,
                height: 1,
                color: Colors.black38,
              ),
            ),
            const Text(
              "Or",
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                width: 135,
                height: 1,
                color: Colors.black38,
              ),
            ),
          ],
        ),
      )
    ]));
  }

  Future<void> preloadImage() async {
    await precacheImage(const AssetImage("assets/images/signIn.png"), context);
  }
}
