import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glofaa/payment_method_screen.dart';
import 'package:glofaa/service_cost_estimate_screen.dart';

class ReviewEstimateScreen extends StatefulWidget {
  const ReviewEstimateScreen({super.key});

  @override
  State<ReviewEstimateScreen> createState() => _ReviewEstimateScreenState();
}

class _ReviewEstimateScreenState extends State<ReviewEstimateScreen> {
  late bool isLoading;
  late bool showIsCustomerNotPresentBtn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estimate',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 18),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.currency_rupee_outlined,
              size: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 10,
              ),
              child: const Text(
                'JOB SUMMARY',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.50),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'AC',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'Split AC',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deep clean AC service (split) x 1',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              size: 17,
                            ),
                            Text(
                              '499',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'AC',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 10),
                    child: Text(
                      'Split AC',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deep clean AC service (split) x 1',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              size: 17,
                            ),
                            Text(
                              '499',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
              child: const Text(
                'OTHERS',
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.50),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Convenience Fee',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          size: 17,
                        ),
                        Text(
                          '49',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: const Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Estimate (Approx)',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              size: 17,
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                            Text(
                              '1047',
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'User Paid',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.remove,
                              size: 17,
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                            Icon(
                              Icons.currency_rupee_rounded,
                              size: 17,
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'User to Pay',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              size: 17,
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                            Text(
                              '847',
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30.0, top: 50),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _displayEstimateIsCorrectOrNotBottomSheet();
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ReviewEstimateScreen()));*/
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                ),
                child: const Text(
                  "Submit Estimate for approval :  ₹ 847",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _displayEstimateIsCorrectOrNotBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.help_outlined,
                      color: Color.fromRGBO(147, 76, 234, 1),
                      size: 75,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: "Is ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 18),
                      ),
                      TextSpan(
                        text: "₹847",
                        style: TextStyle(
                            color: Color.fromRGBO(147, 76, 234, 1),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 18),
                      ),
                      TextSpan(
                        text: " estimate correct?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 18),
                      ),
                    ])),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Costing difference (less or more) may impact customer experience",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.50),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceCostEstimateScreen()));
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromRGBO(147, 76, 234, 1),
                              side: const BorderSide(
                                color: Color.fromRGBO(147, 76, 234, 1),
                              ),
                            ),
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 16,
                            ),
                            label: const Text(
                              "Change",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                              isLoading = true;
                              showIsCustomerNotPresentBtn = false;
                              _displayConfirmationBottomSheet();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(147, 76, 234, 1),
                            ),
                            label: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16,
                            ),
                            icon: const Text(
                              "Yes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }

  Future _displayConfirmationBottomSheet() {
    return showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setSheetState) {
          Timer(const Duration(seconds: 3), () {
            setSheetState(() {
              isLoading = false;
            });
            //startTimer(setSheetState);
          });
          Timer(const Duration(seconds: 1), () {
            setSheetState(() {
              showIsCustomerNotPresentBtn = true;
            });
            //startTimer(setSheetState);
          });

          return Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                (isLoading)
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.blue))
                    : const Icon(
                        Icons.check_circle,
                        size: 60,
                        color: Colors.green,
                      ),
                Text(
                  (isLoading) ? "Waiting for confirmation" : "Job Completed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: (!isLoading)
                        ? Colors.green
                        : const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: isLoading ? 14 : 18,
                  ),
                ),
                (isLoading)
                    ? const Text(
                        'We will wait for customer’s confirmation upto 2 minutes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      )
                    : const SizedBox(),
                (isLoading)
                    ? (showIsCustomerNotPresentBtn)
                        ? ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text(
                              "Customer not at home?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                          )
                        : const SizedBox()
                    : ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaymentMethodScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
