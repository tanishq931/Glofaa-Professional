import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glofaa/add_ac_screen.dart';
import 'package:glofaa/capture_photo_or_video_screen.dart';
import 'package:glofaa/caution_screen.dart';
import 'package:glofaa/issue_screen.dart';
import 'package:glofaa/map_screen.dart';
import 'package:permission_handler/permission_handler.dart';

import 'glofaa_chat_screen.dart';

class DeliverySummaryScreen extends StatefulWidget {
  final bool showHelperSheet;
  final bool showInstructionSheet2;
  final bool isJobStarted;

  const DeliverySummaryScreen(
      {super.key,
      this.showHelperSheet = false,
      this.showInstructionSheet2 = false,
      this.isJobStarted = false});

  @override
  State<DeliverySummaryScreen> createState() => _DeliverySummaryScreenState();
}

class _DeliverySummaryScreenState extends State<DeliverySummaryScreen> {
  var otp1 = TextEditingController();
  var otp2 = TextEditingController();
  var otp3 = TextEditingController();
  var otp4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.showHelperSheet) _displayBringHelperBottomSheet();
      if (widget.showInstructionSheet2) _displayInstructionBottomSheet2();
      if (widget.isJobStarted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Job Started')));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.red.shade50,
              margin: const EdgeInsets.only(top: 35.0),
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
                          fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GlofaaChatScreen()));
                        },
                        child: const SizedBox(
                          width: 100,
                          child: Column(
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
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MapScreen()));
                        },
                        child: const SizedBox(
                          width: 100,
                          child: Column(
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
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const IssueScreen()));
                        },
                        child: const SizedBox(
                          width: 100,
                          child: Column(
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
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.red.shade50,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 15, right: 15),
                title: const Text(
                  "Make sure you wear your sanitized safety equipments.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12.5),
                ),
                trailing: CircleAvatar(
                  child: Image.asset("assets/images/otp_image.png"),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 15.0),
              child: const Text(
                "LOCATION",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "tower 19, flat 205, Lotus Boulevard, sector 100, Noida, Uttar Pradesh, 201303, India",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                trailing: CircleAvatar(
                  child: Image.asset("assets/images/otp_image.png"),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 15.0),
              child: const Text(
                "JOB SUMMARY",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2 x Deep clean AC service (split)",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                      Row(
                        children: [
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
                        ],
                      ),
                    ],
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
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Convenience Fee",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
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
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12),
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
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "check final amount on invoice screen",
                    style: TextStyle(
                        color: Color.fromRGBO(206, 177, 20, 1),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
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
            (!widget.isJobStarted)
                ? ElevatedButton(
                    onPressed: () {
                      _checkPermission(Permission.camera);
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                      "Take Selfie & Notify Arrival to Customer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 145,
                          child: OutlinedButton(
                            onPressed: () {
                              _displayAddACDetailsBottomSheet();
                            },
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              side: const BorderSide(color: Colors.blue),
                            ),
                            child: const Text(
                              "Update Status",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 11.9),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 145,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: const Text(
                              "Create Estimate",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 11.9),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Future _checkPermission(Permission permission) async {
    final status = await permission.request();
    if (status.isGranted) {
      if (widget.showHelperSheet) {
        _displayBringHelperBottomSheet();
      } else if (widget.showInstructionSheet2) {
        _displayInstructionBottomSheet2();
      } else {
        _displayInstructionBottomSheet();
      }
    } else if (status.isDenied || status.isPermanentlyDenied) {
      _displayGoToSettingDialogBox();
    }
  }

  Future _displayGoToSettingDialogBox() {
    return showAdaptiveDialog(
        context: context,
        builder: (context) => Dialog(
              insetPadding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 25, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Allow Glofaa technology partner app to fetch location in background. Please select Allow this time option on next screen.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          openAppSettings();
                        },
                        child: const Text(
                          "CONTINUE",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  Future _displayInstructionBottomSheet() {
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
                      //   _displayBottomSheet2();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CapturePhotoOrVideoScreen()));
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

  Future _displayBringHelperBottomSheet() {
    return showModalBottomSheet(
        isDismissible: false,
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
                            _displayOTPDialogBox();
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

  Future _displayOTPDialogBox() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Dialog(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 35,
                      alignment: Alignment.topRight,
                      child: OutlinedButton.icon(
                        onPressed: () {
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ServiceCostEstimateScreen()));*/
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                          side: const BorderSide(
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                        ),
                        icon: const Icon(
                          Icons.help_outline,
                          size: 20,
                        ),
                        label: const Text(
                          "Help",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Enter job code",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Ask customer for this code",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.50),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            controller: otp1,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            controller: otp2,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            controller: otp3,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffd9d9d9)),
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            maxLength: 1,
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.phone,
                            controller: otp4,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Poppins',
                                fontSize: 17),
                            decoration: InputDecoration(
                              //isCollapsed: true,
                              counterText: "",
                              contentPadding:
                                  const EdgeInsets.only(left: 15.0, top: 17.0),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xffd9d9d9),
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Resend OTP in 00:28',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20.0,
                      ),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          _displayTAndCDialogBox();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                        ),
                        child: const Text(
                          "Verify OTP",
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
              ),
            ));
  }

  Future _displayTAndCDialogBox() {
    return showAdaptiveDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Dialog(
              insetPadding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 20, bottom: 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "I hereby  agree and accept the following for the current job:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "I will not perform gas charging under any circumstances on a job if i am not approved for Gas charging by glofaa technology.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      const ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "I will check if AC has  Nitrogen or not before I start working on it.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      const ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "I will ensure  that the AC plug is switched off before I start working on it.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      const ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        contentPadding: EdgeInsets.zero,
                        leading: Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Icon(
                            Icons.circle_rounded,
                            size: 11,
                            color: Colors.black,
                          ),
                        ),
                        title: Text(
                          "If i am not approved for gas charging by glofaa technology and if a customer requires gas charging of his/her air conditioner unit(s), I undertake to inform the customer that i am not approved to carry out gas charging. I further undertake  to inform the customer that they can make a specific request for gas charging on the Glofaa Technology app so that an approved technician may be connected with the customer. ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20.0, top: 20.0),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CautionScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(147, 76, 234, 1),
                          ),
                          child: const Text(
                            "I agree",
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
                ),
              ),
            ));
  }

  Future _displayInstructionBottomSheet2() {
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
                    "Please click a Picture with safety harness in your hand",
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
                              builder: (context) => CapturePhotoOrVideoScreen(
                                  captureImage2ndTime: true)));
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Click Picture",
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
                        _displayBringHelperBottomSheet();
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

  Future _displayAddACDetailsBottomSheet() {
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
                        fontSize: 18),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddAcScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
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
}
