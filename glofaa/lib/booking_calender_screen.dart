import 'package:flutter/material.dart';
import 'package:glofaa/daily_working_details_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingCalenderScreen extends StatefulWidget {
  const BookingCalenderScreen({super.key});

  @override
  State<BookingCalenderScreen> createState() => _BookingCalenderScreenState();
}

class _BookingCalenderScreenState extends State<BookingCalenderScreen> {
  DateTime today = DateTime.now();
  int currentYear = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Booking Calender",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {
              /* Navigator.push(context, MaterialPageRoute(builder: (context) => LiveTrainingScreen()));*/
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: TableCalendar(
                availableGestures: AvailableGestures.all,
                headerStyle: const HeaderStyle(
                  headerPadding: EdgeInsets.symmetric(vertical: 15),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    size: 30,
                    color: Colors.black54,
                  ),
                  leftChevronPadding: EdgeInsets.zero,
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    size: 30,
                    color: Colors.black54,
                  ),
                  rightChevronPadding: EdgeInsets.zero,
                  titleCentered: true,
                  formatButtonVisible: false,
                  titleTextStyle:
                      TextStyle(fontFamily: 'Poppins', fontSize: 16),
                ),
                focusedDay: today,
                pageJumpingEnabled: true,
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle:
                      TextStyle(fontFamily: 'Poppins', color: Colors.black),
                  weekendStyle:
                      TextStyle(fontFamily: 'Poppins', color: Colors.black),
                ),
                calendarStyle: const CalendarStyle(
                  todayTextStyle:
                      TextStyle(fontFamily: 'Poppins', color: Colors.white),
                  selectedTextStyle:
                      TextStyle(fontFamily: 'Poppins', color: Colors.white),
                  outsideTextStyle:
                      TextStyle(fontFamily: 'Poppins', color: Colors.grey),
                  defaultTextStyle: TextStyle(fontFamily: 'Poppins'),
                ),
                firstDay: DateTime.utc(currentYear - 10, 1, 1),
                lastDay: DateTime.utc(currentYear + 10, 12, 31),
                onDaySelected: _onDaySelected,
                onDayLongPressed: (DateTime day, DateTime today) {
                  setState(() {
                    today = day;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DailyWorkingDetailsScreen(
                                longPressedDate: today,
                              )));
                },
                selectedDayPredicate: (day) => isSameDay(day, today),
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
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Colors.deepPurpleAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Scheduled booking",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Colors.lightBlue.shade600,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Customer booking",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 13,
                        color: Colors.orange.shade600,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Leave",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your leaves:",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text.rich(TextSpan(
                      text: "13 February",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13,
                      ),
                      children: [
                        TextSpan(
                          text: " - 8 pm - 9 pm",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(TextSpan(
                      text: "17 February",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13,
                      ),
                      children: [
                        TextSpan(
                          text: " - 8 pm - 9 pm",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        )
                      ])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }
}
