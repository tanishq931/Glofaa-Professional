import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Method',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            color: Colors.greenAccent.shade100,
            child: const Text(
              'Customer has accepted the invoice.',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 13),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red.shade200,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mr. Alpha',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Astra tower, North building ,432 WB',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amount to collect:',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    Text(
                      '₹847',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                  ),
                ]),
            child: Column(
              children: [
                const Text(
                  'How is the customer paying?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.amber.shade100,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Cash',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color.fromRGBO(147, 76, 234, 1),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Online',
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
          )
        ],
      ),
    );
  }
}
