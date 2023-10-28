import 'package:flutter/material.dart';
import 'package:glofaa/account_details_screen.dart';
import 'package:glofaa/award_and_certificate_screen.dart';
import 'package:glofaa/bank_details_screen.dart';
import 'package:glofaa/live_training_screen.dart';
import 'package:glofaa/onboarding_documents_screen.dart';
import 'package:glofaa/personal_information_screen.dart';
import 'package:glofaa/tell_about_your_work_screen.dart';
import 'package:glofaa/verify_vaccination.dart';

class BottomProfileProgressScreen extends StatelessWidget {
  const  BottomProfileProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Complete training and profile",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "On boarding documents",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pan, address proof, documents loan",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OnBoardingDocumentsScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Watch training videos",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "videos about how to work with Glofaa",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LiveTrainingScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bank Details",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "videos about how to work with Glofaa",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const AccountDetailsScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Award and certificate photos",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Add your award and certificates here",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const AwardAndCertificateScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Verify vaccination status",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Important for health safety",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const VerifyVaccinationScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About me",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tell us about yourself",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const TellAboutYourWorkScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Card(
                color: const Color.fromRGBO(235, 235, 235, 1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal information",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Email & profile picture",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const PersonalInformationScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
