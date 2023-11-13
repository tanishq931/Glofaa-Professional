import 'package:flutter/material.dart';
import 'package:glofaa/track_your_performance_screen.dart';

class CreditsHistoryScreen extends StatefulWidget {
  const CreditsHistoryScreen({super.key});

  @override
  State<CreditsHistoryScreen> createState() => _CreditsHistoryScreenState();
}

class _CreditsHistoryScreenState extends State<CreditsHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Credits History',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 20,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                    'Total Balance',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '25 Credits',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TrackYourPerformanceScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.zero),
                      child: const Text(
                        'Buy',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                    ),
                  ]),
              child: const TabBar(
                isScrollable: true,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Recharge',
                  ),
                  Tab(
                    text: 'Expenses',
                  ),
                  Tab(
                    text: 'Penalties',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                      ),
                    ]),
                child: const TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 jul, 06:56',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Mr Alpha',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'View Lead',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Lead bought',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7 Credits',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Remaining Credits: 25',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 jul, 06:56',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Mr Alpha',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'View Lead',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Lead bought',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7 Credits',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Remaining Credits: 25',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 jul, 06:56',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Mr Alpha',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'View Lead',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Lead bought',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7 Credits',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Remaining Credits: 25',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 jul, 06:56',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Mr Alpha',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'View Lead',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Lead bought',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7 Credits',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Remaining Credits: 25',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 jul, 06:56',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Mr Alpha',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'View Lead',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Lead bought',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7 Credits',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Remaining Credits: 25',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '20 jul, 06:56',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    'Mr Alpha',
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'View Lead',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Lead bought',
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7 Credits',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Remaining Credits: 25',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '20 jul, 06:56',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'Mr Alpha',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'View Lead',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Lead bought',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '7 Credits',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Remaining Credits: 25',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '20 jul, 06:56',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'Mr Alpha',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'View Lead',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Lead bought',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '7 Credits',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Remaining Credits: 25',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '20 jul, 06:56',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  'Mr Alpha',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'View Lead',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Lead bought',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '7 Credits',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Remaining Credits: 25',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                  /*ListTile(
                    leading: Column(
                      children: [
                        Text(
                          '20 jul, 06:56',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Mr Alpha',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'View Lead',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          'Lead bought',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '7 Credits',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Remaining Credits: 25',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Column(
                      children: [
                        Text(
                          '20 jul, 06:56',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Mr Alpha',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'View Lead',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          'Lead bought',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '7 Credits',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Remaining Credits: 25',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Column(
                      children: [
                        Text(
                          '20 jul, 06:56',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Mr Alpha',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'View Lead',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          'Lead bought',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '7 Credits',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Remaining Credits: 25',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Column(
                      children: [
                        Text(
                          '20 jul, 06:56',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Mr Alpha',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'View Lead',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          'Lead bought',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '7 Credits',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Remaining Credits: 25',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),*/
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
