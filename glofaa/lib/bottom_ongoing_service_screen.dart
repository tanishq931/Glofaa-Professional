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
                  tabAlignment: TabAlignment.start,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: TabBarView(children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  minVerticalPadding: 0,
                                  titleAlignment: ListTileTitleAlignment.top,
                                  title: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mr. Alpha',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Dainik janyug society, Abhimanyu Apartment, Dallupura, Delhi, 110096, India',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  trailing: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5,
                                      ),
                                      Text(
                                        '06:00 PM',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Yesterday',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Poppins',
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 22,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Job Ended',
                                        style: TextStyle(
                                            color: Colors.green.shade700,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.perm_phone_msg_rounded,
                                            color: Colors.blue,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.directions_outlined,
                                            color: Colors.blue,
                                            size: 19,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Direction',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ],
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
                ),
              )
            ],
          ),
        ));
  }
}
