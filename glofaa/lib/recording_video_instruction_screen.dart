import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glofaa/capture_photo_or_video_screen.dart';
import 'package:image_picker/image_picker.dart';

class RecordingVideoInstructionScreen extends StatefulWidget {
  const RecordingVideoInstructionScreen({super.key});

  @override
  State<RecordingVideoInstructionScreen> createState() =>
      _RecordingVideoInstructionScreenState();
}

class _RecordingVideoInstructionScreenState
    extends State<RecordingVideoInstructionScreen> {
  File? _capturedVideoFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Capture Video',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 18),
      )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Record Back Drain Tray Cleaning Video',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'To increase customer confidence, we will share this video with customer',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 13),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'How to record video?',
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 13),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/images/ins_img.png',
              ),
              title: const Text(
                'Pour 1 liter water in back drain tray with water bottle',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/images/ins_img.png',
              ),
              title: const Text(
                'Using phone, record video of water draining from back drain to main drain',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(
                'assets/images/ins_img.png',
              ),
              title: const Text(
                'Record for 20 sec, till water has drained from back drain to main drain into drainage pipe',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 13),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50.0, top: 50),
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  _captureVideoFromCamera();
                  // Navigator.pop(context);
                  // _displayInstructionBottomSheet3();
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
               */
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                label: const Text(
                  "Start Recording",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                icon: const CircleAvatar(
                    radius: 13,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.circle,
                        color: Colors.redAccent,
                        size: 16,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _captureVideoFromCamera() async {
    final capturedVideo =
        await ImagePicker().pickVideo(source: ImageSource.camera);

    if (capturedVideo == null) return;
    setState(() {
      _capturedVideoFile = File(capturedVideo.path);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CapturePhotoOrVideoScreen(
                  capturedVideoFile: _capturedVideoFile)));
    });
  }
}
