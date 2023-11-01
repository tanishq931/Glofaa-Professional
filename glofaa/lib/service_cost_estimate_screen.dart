import 'package:flutter/material.dart';
import 'package:glofaa/review_estimate_screen.dart';

class ServiceCostEstimateScreeen extends StatefulWidget {
  const ServiceCostEstimateScreeen({super.key});

  @override
  State<ServiceCostEstimateScreeen> createState() =>
      _ServiceCostEstimateScreeenState();
}

class _ServiceCostEstimateScreeenState
    extends State<ServiceCostEstimateScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estimate',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.insert_chart,
              size: 18,
            ),
            label: const Text(
              'Rate Card',
              style: TextStyle(
                  color: Color.fromRGBO(147, 76, 234, 1),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 14),
            ),
          )
        ],
      ),
      body: Column(
        children: [
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'AC',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_outlined,
                          size: 18,
                        ),
                        label: const Text(
                          'Edit',
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    'Split AC',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deep clean AC service (split) x 1',
                        style: TextStyle(
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
            margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 20.0),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'AC',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_outlined,
                          size: 18,
                        ),
                        label: const Text(
                          'Edit',
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    'Split AC',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Deep clean AC service (split) x 1',
                        style: TextStyle(
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
            margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 20.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text(
                'Add AC Details',
                style: TextStyle(
                    color: Color.fromRGBO(147, 76, 234, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40.0, top: 50),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReviewEstimateScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
              ),
              child: const Text(
                "Create Estimate",
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
