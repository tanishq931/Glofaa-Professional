import 'package:flutter/material.dart';

import 'credits_history_screen.dart';

class ChooseJobPackageScreen extends StatefulWidget {
  const ChooseJobPackageScreen({super.key});

  @override
  State<ChooseJobPackageScreen> createState() => _ChooseJobPackageScreenState();
}

class _ChooseJobPackageScreenState extends State<ChooseJobPackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Choose Your Job Package',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
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
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(239, 229, 229, 1.0),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '90 job package',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '1300',
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '950 credits',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Special price ends in 4 days',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const ListTile(
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    leading: Text(
                      'Package validity',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    trailing: Text(
                      '90 jobs or 30 days',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  const ListTile(
                      dense: true,
                      visualDensity: VisualDensity.compact,
                      leading: Text(
                        'Lead hours',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                      trailing: Text(
                        '45 hours',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      )),
                  const ListTile(
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    leading: Text(
                      'Lead response rate',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    trailing: Text(
                      '70%',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreditsHistoryScreen()));
                        },
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Buy with',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '1300',
                              style: TextStyle(
                                  color: Colors.white,
                                  decorationThickness: 2,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '950 Credits',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(239, 229, 229, 1.0),
              ),
              child: const Text(
                'Current job package(18th jul 2023 - 16th aug 2023)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: const ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                leading: Text(
                  '3 job sent',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                trailing: Text(
                  '26 days left',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              margin: const EdgeInsets.symmetric(vertical: 15),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(239, 229, 229, 1.0),
              ),
              child: const Text(
                'MG refund (18th jul 2023 - 16th aug 2023)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text(
                      "Targets",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "MG",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      "YOU",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(
                      Text(
                        "Minimum rating",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Text(
                            "4.6",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          Text(
                            "4.51",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text(
                        "Response Rate",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        "80%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                    DataCell(
                      Text(
                        "0%",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text(
                        "Delivery Rate",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        "75%",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                    DataCell(
                      Text(
                        "0%",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text(
                        "Leave Hours",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        "45hrs",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                    DataCell(
                      Text(
                        "3hrs",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text(
                        "Subscription",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                    DataCell(
                      Text(
                        "30",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                    DataCell(
                      Text(
                        "3",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1)),
                child: const Text(
                  'MG refund history',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Glofaa Guarantee',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Plan validity: 90 jobs or 30 days',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Subscription jobs: 90',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                '120 compensation per shortfall of subscription job',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'Partner Commitment to be eligible for MG refund (30 job package):',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Profile rating: Always above 4.5',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Leave: Not more than 45 hours of leave',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Response rate 70%+ on subscription  leads (partner will accept more than 70% of all jobs given) ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Delivery rate 85% on all accepted leads (partner will deliver more than 85% of all leads accepted)',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Minimum credit balance of 100 credits to be maintained in the wallet',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'Presence in same city/area',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'No behavior related blocking',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'No fraud behavior/impersonation',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'MG refund is calculated as 120 per shortfall of subscription job ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'You received 91 subscription jobs - no refund',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Icon(Icons.circle, size: 10),
              title: Text(
                'You received 85 subscription jobs - shortfall of 5 subscription jobs as per Glofaa minimum jobs guarantee. Refund of 5*120 = 600',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                'No Minimum Guarantee - Exigent circumstances',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              titleAlignment: ListTileTitleAlignment.top,
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Icon(Icons.circle, size: 10),
              ),
              title: Text(
                'In consideration of certain exigent circumstances (especially due to the spread of COVID- 19) if there is a mass reduction in demand for the services offered via the Glofaa Technology  platform  in your specific category or city, Glofaa Technology, in its sole discretion, reserves the right to suspend any Minimum business Guarantee that had been provided prior to the date of this communication. If the Minimum Business Guarantees that are suspended due to a reduction in demand will be revived once demand stabilises. ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
