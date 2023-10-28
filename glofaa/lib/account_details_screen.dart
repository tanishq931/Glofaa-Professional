import 'package:flutter/material.dart';
import 'package:glofaa/bank_details_screen.dart';
import 'package:glofaa/tell_about_your_work_screen.dart';
import 'package:glofaa/tell_about_yourself.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account Details",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/account_details_image.png",
                width: 250,
                height: 250,
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                  elevation: 3,
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Bank Details",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BankDetailsScreen()));
              },
              style: OutlinedButton.styleFrom(
                  elevation: 3,
                  foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  side: BorderSide(color : Color.fromRGBO(147, 76, 234, 1),),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outline_outlined),
                   SizedBox(width: 20,),
                   Text(
                    "Add Details",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(147, 76, 234, 1),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
