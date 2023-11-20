import 'package:flutter/material.dart';
import 'package:glofaa/capture_photo_or_video_screen.dart';
import 'package:glofaa/recording_video_instruction_screen.dart';

class AddProofScreen extends StatefulWidget {
  const AddProofScreen({super.key});

  @override
  State<AddProofScreen> createState() => _AddProofScreenState();
}

class _AddProofScreenState extends State<AddProofScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Click Media',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 18),
      )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                margin: const EdgeInsets.only(top: 10),
                child: const Text('AC',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    )),
              ),
              Container(
                width: 130,
                margin: const EdgeInsets.only(top: 10),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RecordingVideoInstructionScreen()));
                },
                child: Container(
                    width: 130,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.only(top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.add, color: Colors.blue)),
                        const Text('Back Drain Tray',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13,
                            )),
                        Container(
                            alignment: Alignment.topRight,
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue,
                            ))
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CapturePhotoOrVideoScreen(
                              clickingPicAfterCleaningAC: true)));
                },
                child: Container(
                    width: 130,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.only(top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: const Icon(Icons.add, color: Colors.blue)),
                        const Text('Cleaning',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13,
                            )),
                        Container(
                            alignment: Alignment.topRight,
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue,
                            ))
                      ],
                    )),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                margin: const EdgeInsets.only(top: 10),
                child: const Text('AC',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    )),
              ),
              Container(
                width: 130,
                margin: const EdgeInsets.only(top: 10),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 130,
                  height: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.only(top: 10),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Icon(Icons.add, color: Colors.blue)),
                      const Text('Back Drain Tray',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          )),
                      Container(
                          alignment: Alignment.topRight,
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.blue,
                          ))
                    ],
                  )),
              Container(
                  width: 130,
                  height: 100,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.only(top: 10),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Icon(Icons.add, color: Colors.blue)),
                      const Text('Cleaning',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          )),
                      Container(
                          alignment: Alignment.topRight,
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.blue,
                          ))
                    ],
                  )),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30.0, top: 50),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                // _displayInstructionBottomSheet3();
                /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
               */
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Save Proof",
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
    );
  }
}
