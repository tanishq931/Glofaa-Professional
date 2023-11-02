import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glofaa/fill_ac_details_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class DeliverySummaryScreen extends StatefulWidget {
  const DeliverySummaryScreen({super.key});

  @override
  State<DeliverySummaryScreen> createState() => _DeliverySummaryScreenState();
}

class _DeliverySummaryScreenState extends State<DeliverySummaryScreen> {
  @override
  Widget build(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Today, 10:00 am",
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Mrs. Gama",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.perm_phone_msg_rounded,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "CONTACT",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.directions,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "SEE ON MAP",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.help_outlined,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "HELP",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "Make sure you wear your sanitized safety equipments.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 12),
                        ),
                      ),
                      CircleAvatar(
                        child: Image.asset("assets/images/otp_image.png"),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "LOCATION",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 200,
                          child: Text(
                            "tower 19, flat 205, Lotus Boulevard, sector 100, Noida, Uttar Pradesh, 201303, India",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ),
                        CircleAvatar(
                          child: Image.asset("assets/images/otp_image.png"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 30, top: 10),
            child: const Text(
              "JOB SUMMARY",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 13),
            ),
          ),
          const Card(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2 x Deep clean AC service (split)",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "split AC Regular Service x 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Row(children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          size: 15,
                        ),
                        Text(
                          "998",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ]),
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
                            "Others",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Convenience Fee",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Row(children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          size: 15,
                        ),
                        Text(
                          "49",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ]),
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
                            "Total",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 255,
                            child: Text(
                              "check final amount on invoice screen",
                              style: TextStyle(
                                  color: Color.fromRGBO(206, 177, 20, 1),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                        Icon(
                          Icons.currency_rupee_rounded,
                          size: 15,
                        ),
                        Text(
                          "1047",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const Text(
            "Reached customer place?",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () async {
              PermissionStatus status = await Permission.camera.request();

              if (status.isGranted) {
                /* messenger.showSnackBar(const SnackBar(
                    content: Text("Allowed",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12))));
*/
                _displayBottomSheet();
              } else if (status.isPermanentlyDenied) {
                messenger.showSnackBar(SnackBar(
                  content: const Text("Denied",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12)),
                  action: SnackBarAction(
                      label: "Open App Setting",
                      onPressed: () {
                        openAppSettings();
                      }),
                ));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
            ),
            child: const Text(
              "Take Selfie & Notify Arrival to Customer",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 12),
            ),
          )
        ],
      ),
    );
  }

  Future _displayBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Click your selfie correctly",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "1. Pull your mask to the chin and than take a selfie",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "2. Look straight and position your face inside the circle",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.circle,
                    color: Color.fromRGBO(147, 76, 234, 1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                      _displayBottomSheet2();
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Click Selfie",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    ),
                  )
                ],
              ),
            ));
  }

  Future _displayBottomSheet2() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: Color.fromRGBO(90, 156, 66, 1),
                    size: 45,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Quote auto approved",
                    style: TextStyle(
                        color: Color.fromRGBO(90, 156, 66, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Quote and booking amount are same . No need of customer approval",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _displayBottomSheet3();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }

  Future _displayBottomSheet3() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color.fromRGBO(147, 76, 234, 1),
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    FontAwesomeIcons.personCirclePlus,
                    color: Color.fromRGBO(147, 76, 234, 1),
                    size: 45,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Are you bringing a helper on this job?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "We will confirm it with the customer too.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor:
                                const Color.fromRGBO(147, 76, 234, 1),
                            side: const BorderSide(
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                          ),
                          child: const Text(
                            "No",
                            style: TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _displayBottomSheet4();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(147, 76, 234, 1),
                          ),
                          child: const Text(
                            "Yes",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
  }

  Future _displayBottomSheet4() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    alignment: Alignment.center,
                    color: const Color.fromRGBO(84, 140, 133, 0.07),
                    child: const Text(
                      "Check standing pressure",
                      style: TextStyle(
                          color: Color.fromRGBO(90, 156, 66, 1),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                    ),
                  ),
                  const Text(
                    "09 : 57",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "Late entry ",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.67),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                    TextSpan(
                      text: "penalty",
                      style: TextStyle(
                          color: Color.fromRGBO(175, 35, 35, 0.7),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                    TextSpan(
                      text: " 10 credits",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.67),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                  ])),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _displayBottomSheet5();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                      ),
                      child: const Text(
                        "Add AC Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }

  Future _displayBottomSheet5() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Please click a selfie with safety harness in your hand",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "1. Pull your mask to the chin and than take a selfie",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "2. Look straight and position your face inside the circle",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.circle,
                    color: Color.fromRGBO(147, 76, 234, 1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FillACDetailsScreen()));
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Click Selfie",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    ),
                  )
                ],
              ),
            ));
  }
}
