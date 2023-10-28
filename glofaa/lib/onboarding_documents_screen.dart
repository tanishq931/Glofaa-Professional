import 'package:flutter/material.dart';
import 'package:glofaa/identity_verification_screen.dart';
import 'package:glofaa/account_details_screen.dart';
import 'package:glofaa/loans_screen.dart';

class OnBoardingDocumentsScreen extends StatefulWidget {
  const OnBoardingDocumentsScreen({super.key});

  @override
  State<OnBoardingDocumentsScreen> createState() =>
      _OnBoardingDocumentsScreenState();
}

class _OnBoardingDocumentsScreenState extends State<OnBoardingDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "On Boarding Documents",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 100,
            crossAxisSpacing: 5,
          ),
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => IdentityVerificationScreen()));
              },
              child: Card(
                color: Color.fromRGBO(203, 255, 224, 1),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/one_image.png",
                          width: 17,
                          height: 26,
                        ),
                        Image.asset(
                          "assets/images/check_image.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Verification",
                    style: TextStyle(
                        color: Color.fromRGBO(46, 222, 117, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                ]),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoansScreen()));
              },
              child: Card(
                color: Color.fromRGBO(201, 242, 255, 1),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/two_image.png",
                          width: 17,
                          height: 30,
                        ),
                        Image.asset(
                          "assets/images/loan_image.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Loans",
                    style: TextStyle(
                        color: Color.fromRGBO(72, 202, 243, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
