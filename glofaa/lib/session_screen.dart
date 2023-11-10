import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SessionScreen extends StatefulWidget {
  const SessionScreen({super.key});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding:
                  const EdgeInsets.only(left: 15, right: 5, top: 5, bottom: 15),
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
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "Skill session",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Column(
                        children: [
                          Text(
                            "We want to know more about your experience in laptop Repair Service",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 45,
                      child: Image.asset(
                        "assets/images/session_image.png",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        _displayLocation$GpsDialogBox();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Text(
                        "Book now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Text(
                "About this stage",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
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
                    children: [
                      Image.asset(
                        "assets/images/about_img1.png",
                        height: 120,
                        width: 150,
                      ),
                      const Text(
                        "what is skill session?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
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
                    children: [
                      Image.asset(
                        "assets/images/about_img2.png",
                        height: 120,
                        width: 150,
                      ),
                      const Text(
                        "How to book session?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future _checkPermission(Permission permission, BuildContext context) async {
    var messenger = ScaffoldMessenger.of(context);
    final status = await permission.request();
    if (status.isGranted) {
      messenger.showSnackBar(const SnackBar(
        content: Text(
          "Permission Granted",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              fontSize: 13),
        ),
      ));
    } else if (status.isDenied || status.isPermanentlyDenied) {
      _displayGoToSettingDialogBox();
    }
  }

  Future _displayLocation$GpsDialogBox() {
    return showAdaptiveDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Dialog(
              insetPadding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 20, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Location & GPS access",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Please allow Glofaa app to track your current location. this is important for us to be able to send you jobs in your area. ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          _checkPermission(Permission.location, context);
                        },
                        child: const Text(
                          "AGREE AND GRANT ACCESS",
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
}
