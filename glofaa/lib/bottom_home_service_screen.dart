import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomHomeServiceScreen extends StatefulWidget {
  const BottomHomeServiceScreen({super.key});

  @override
  State<BottomHomeServiceScreen> createState() =>
      _BottomHomeServiceScreenState();
}

class _BottomHomeServiceScreenState extends State<BottomHomeServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: const Column(
                children: [
                  Text(
                    'New jobs are stopped',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.shopping_bag_rounded),
                    title: Text(
                      'Jobs are paused for today.Tap to start receiving jobs again. ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.calendar_month_outlined),
                    title: Text(
                      'You have achieved your target jobs for the day. Click on below button to start receiving jobs.',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
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
                      Text(
                        'Thu, Jul 21',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                      Text(
                        'JOBS STOPPED',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
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
                      Text(
                        'Fri, Jul 22',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                      Text(
                        'WORKING',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(17),
                  margin: const EdgeInsets.only(right: 15, left: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                        ),
                      ]),
                  child: const Icon(Icons.calendar_month_outlined),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'No new jobs',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                subtitle: Text(
                  '6 jobs missed recently',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'No more jobs today',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Cult',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            5,
                            (index) => Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                        ),
                                      ]),
                                  child: CircleAvatar(
                                    radius: 25,
                                    child:
                                        Image.asset("assets/images/img1.png"),
                                  ),
                                ))),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Row(
                      children: [
                        const Text(
                          'Pending work',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                ),
                              ]),
                          child: const Icon(
                            FontAwesomeIcons.three,
                            size: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                            ),
                          ]),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Text(
                    '90 Subscription jobs, Buy job pack now',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Book your general training session today',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Confirm your calendar for the week of 19th May - 25th May',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Row(
                      children: [
                        const Text(
                          'Unread updates',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                ),
                              ]),
                          child: const Icon(
                            FontAwesomeIcons.two,
                            size: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                            ),
                          ]),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const Text(
                    'Subscription for Glofaa AC Jet Pump',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Updates an hour ago',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'How to solve for Water Leakage?',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Training 17 hours ago',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, top: 15),
              alignment: Alignment.topLeft,
              child: const Text(
                'More from Glofaa',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 17),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Earn upto 1000 for every friend of yours that join Glofaa',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      'Refer a friend',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.blue,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.card_giftcard,
                  size: 40,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Stock up on your inventory',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      'Buy products',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.blue,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.store_mall_directory_rounded,
                  size: 40,
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
