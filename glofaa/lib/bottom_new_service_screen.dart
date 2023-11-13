import 'package:flutter/material.dart';
import 'package:glofaa/new_job_details_screen.dart';

class BottomNewServiceScreen extends StatefulWidget {
  const BottomNewServiceScreen({super.key});

  @override
  State<BottomNewServiceScreen> createState() => _BottomNewServiceScreenState();
}

class _BottomNewServiceScreenState extends State<BottomNewServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.new_releases_outlined),
              SizedBox(
                width: 10,
              ),
              Text(
                '1 New Job',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewJobDetailsScreen()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent,
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
                      ),
                      Text(
                        'Exclusive: ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      Icon(Icons.show_chart_outlined),
                      Text(
                        '₹100 EXTRA',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          width: 30,
                          child: Icon(
                            Icons.looks_one_outlined,
                            color: Colors.white,
                          )),
                      Text(
                        'Tomorrow',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Icon(Icons.timer_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '54:01',
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black,
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
                    padding: EdgeInsets.only(left: 30.0, top: 5),
                    child: Text(
                      'Astra tower, south building,WB',
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
          ),
          const Icon(Icons.build_circle),
          const Text(
            'Welcome, New jobs will be shown here',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
