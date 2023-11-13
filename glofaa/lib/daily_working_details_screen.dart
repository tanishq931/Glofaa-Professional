import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyWorkingDetailsScreen extends StatefulWidget {
  final DateTime longPressedDate;

  const DailyWorkingDetailsScreen({super.key, required this.longPressedDate});

  @override
  State<DailyWorkingDetailsScreen> createState() =>
      _DailyWorkingDetailsScreenState();
}

class _DailyWorkingDetailsScreenState extends State<DailyWorkingDetailsScreen> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;

  int selected1 = 0;
  int selected2 = 0;

  bool isChecked8_10AM = false;
  bool isChecked10_12PM = false;
  bool isChecked12_2PM = false;
  bool isChecked2_4PM = false;
  bool isChecked4_6PM = false;
  bool isChecked6_8PM = false;
  bool isChecked8_10PM = false;

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat(
      'E , MMM d',
    ).format(widget.longPressedDate);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              formattedDate,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (isExpanded1) ? Colors.blue.shade50 : Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        isExpanded1 = !isExpanded1;
                      });
                    },
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: (!isExpanded1)
                        ? const Icon(
                            Icons.task_alt_outlined,
                            color: Colors.green,
                            size: 21,
                          )
                        : null,
                    title: Text(
                      (!isExpanded1)
                          ? 'Marked as working'
                          : 'Change your status',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
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
                              blurRadius: 1,
                            ),
                          ]),
                      child: Icon(
                        (isExpanded1)
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  (isExpanded1)
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              customRadioButton(
                                  'Working', 1, Colors.blueAccent),
                              customRadioButton(
                                  'Stop new job', 2, Colors.redAccent.shade200),
                            ],
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (isExpanded2) ? Colors.blue.shade50 : Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        isExpanded2 = !isExpanded2;
                      });
                    },
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: (!isExpanded2)
                        ? const Icon(
                            Icons.work_history,
                            color: Colors.green,
                            size: 21,
                          )
                        : null,
                    title: Text(
                      (!isExpanded2)
                          ? '4 jobs committed'
                          : 'Update number of jobs',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
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
                              blurRadius: 1,
                            ),
                          ]),
                      child: Icon(
                        (isExpanded2)
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  (isExpanded2)
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, top: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  10,
                                  (index) => customRadioButton2(
                                      '${index + 1}', index + 1, Colors.blue)),
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (isExpanded3) ? Colors.blue.shade50 : Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        isExpanded3 = !isExpanded3;
                      });
                    },
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: (!isExpanded3)
                        ? const Icon(
                            Icons.history_outlined,
                            color: Colors.green,
                            size: 21,
                          )
                        : null,
                    title: Text(
                      (!isExpanded3)
                          ? '5 hours working'
                          : 'Update your working hours',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
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
                              blurRadius: 1,
                            ),
                          ]),
                      child: Icon(
                        (isExpanded3)
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  (isExpanded3)
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, top: 10),
                          child: Column(children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "08:00 AM - 10:00 AM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked8_10AM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked8_10AM = newState;
                                    });
                                  }),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "10:OO AM - 12:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked10_12PM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked10_12PM = newState;
                                    });
                                  }),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "12:00 PM - 02:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked12_2PM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked12_2PM = newState;
                                    });
                                  }),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "02:00 PM - 04:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked2_4PM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked2_4PM = newState;
                                    });
                                  }),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "04:00PM - 06:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked4_6PM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked4_6PM = newState;
                                    });
                                  }),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "06:00 PM - 08:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked6_8PM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked6_8PM = newState;
                                    });
                                  }),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: const Text(
                                "08:00 PM - 10:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              trailing: Switch(
                                  activeTrackColor: Colors.green,
                                  inactiveTrackColor: Colors.redAccent,
                                  inactiveThumbColor: Colors.white,
                                  trackOutlineWidth:
                                      MaterialStateProperty.resolveWith(
                                          (Set states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return 5.0;
                                    }
                                    return 0; // Use the default width.
                                  }),
                                  value: isChecked8_10PM,
                                  onChanged: (newState) {
                                    setState(() {
                                      isChecked8_10PM = newState;
                                    });
                                  }),
                            )
                          ]),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                  "Calendar marked for $formattedDate",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                )));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 15),
              ),
              child: const Text(
                "Confirm and update calendar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  Widget customRadioButton(String name, int index, Color color) {
    return SizedBox(
      height: 32,
      width: 130,
      child: OutlinedButton.icon(
        onPressed: () {
          setState(() {
            selected1 = index;
          });
        },
        style: (selected1 == index)
            ? ElevatedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                backgroundColor: color,
                side: BorderSide(color: color),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            : OutlinedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                foregroundColor: color,
                side: BorderSide(color: color),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
        icon: Icon(
          (index == 1)
              ? Icons.check_circle_outline_outlined
              : Icons.stop_circle_outlined,
          color: (selected1 == index) ? Colors.white : color,
        ),
        label: Text(name,
            style: TextStyle(
                color: (selected1 == index) ? Colors.white : color,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 13)),
      ),
    );
  }

  Widget customRadioButton2(String name, int index, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 35,
      width: 35,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            selected2 = index;
          });
        },
        style: (selected2 == index)
            ? ElevatedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                backgroundColor: color,
                side: BorderSide(color: color),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              )
            : OutlinedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                foregroundColor: color,
                side: BorderSide(color: color),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
        child: Text(name,
            style: TextStyle(
                color: (selected2 == index) ? Colors.white : color,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 14)),
      ),
    );
  }
}
