import 'package:flutter/material.dart';

class BottomOngoingServiceScreen extends StatefulWidget {
  const BottomOngoingServiceScreen({super.key});

  @override
  State<BottomOngoingServiceScreen> createState() =>
      _BottomOngoingServiceScreenState();
}

class _BottomOngoingServiceScreenState
    extends State<BottomOngoingServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          body: Column(
            children: [
              const TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                  tabs: [
                    Tab(
                      text: 'All',
                    ),
                    Tab(
                      text: 'Today',
                    ),
                    Tab(
                      text: 'Tomorrow',
                    ),
                    Tab(
                      text: 'Week',
                    ),
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Pending',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Cancelled',
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                      width: 30,
                                      child: Icon(Icons.looks_one_outlined)),
                                  Text(
                                    'Tomorrow',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '4:01 pm',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Poppins',
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.perm_phone_msg_rounded),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.directions_rounded),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.0, top: 5),
                                child: Text(
                                  'Astra tower, south building,WBghkjhlhjkj',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: 30,
                                    child: Icon(Icons.looks_one_outlined)),
                                Text(
                                  'Tomorrow',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4:01 pm',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 15),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.perm_phone_msg_rounded),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.directions_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, top: 5),
                              child: Text(
                                'Astra tower, south building,WBghkjhlhjkj',
                                style: TextStyle(
                                    color: Colors.black54,
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
