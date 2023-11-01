import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/capture_Photo_screen.dart';
import 'package:glofaa/service_cost_estimate_screen.dart';

class ReviewEstimateScreen extends StatefulWidget {
  const ReviewEstimateScreen({super.key});

  @override
  State<ReviewEstimateScreen> createState() => _ReviewEstimateScreenState();
}

class _ReviewEstimateScreenState extends State<ReviewEstimateScreen> {
  var otp1 = TextEditingController();
  var otp2 = TextEditingController();
  var otp3 = TextEditingController();
  var otp4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estimate',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
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
                left: 25.0,
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
              margin: const EdgeInsets.all(20),
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
              padding: const EdgeInsets.only(
                left: 25.0,
              ),
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
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
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
                  _displayBottomSheet();
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

  Future _displayBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
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
                                        const ServiceCostEstimateScreeen()));
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
                            _displayOTPDialogBox();
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
            ));
  }

  Future _displayOTPDialogBox() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Dialog(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 35,
                      alignment: Alignment.topRight,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ServiceCostEstimateScreeen()));*/
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                          side: const BorderSide(
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                        ),
                        icon: const Icon(
                          Icons.help_outline,
                          size: 20,
                        ),
                        label: const Text(
                          "Help",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Enter job code",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Ask customer for this code",
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            controller: otp1,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            controller: otp2,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            controller: otp3,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            controller: otp4,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Resend OTP in 00:28',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20.0,
                      ),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          _displayTAndCDialogBox();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                        ),
                        child: const Text(
                          "Verify OTP",
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
              ),
            ));
  }

  Future _displayTAndCDialogBox() {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              insetPadding: const EdgeInsets.all(30),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "I hereby  agree and accept the following for the current job:",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 225,
                          child: Text(
                            "I will not perform gas charging under any circumstances on a job if i am not approved for Gas charging by glofaa technology.",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.50),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 225,
                          child: Text(
                            "I will check if AC has  Nitrogen or not before I start working on it.",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.50),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 225,
                          child: Text(
                            "I will ensure  that the AC plug is switched off before I start working on it.",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.50),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 225,
                          child: Text(
                            "If i am not approved for gas charging by glofaa technology and if a customer requires gas charging of his/her air conditioner unit(s), I undertake to inform the customer that i am not approved to carry out gas charging. I further undertake  to inform the customer that they can make a specific request for gas charging on the Glofaa Technology app so that an approved technician may be connected with the customer. ",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.50),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20.0, top: 20.0),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CapturePhotoScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                        ),
                        child: const Text(
                          "I agree",
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
              ),
            ));
  }
}
