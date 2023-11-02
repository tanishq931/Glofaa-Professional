import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glofaa/add_ac_screen.dart';
import 'package:image_picker/image_picker.dart';

class CapturePhotoScreen extends StatefulWidget {
  const CapturePhotoScreen({super.key});

  @override
  State<CapturePhotoScreen> createState() => _CapturePhotoScreenState();
}

class _CapturePhotoScreenState extends State<CapturePhotoScreen> {
  File? _capturedImage;
  late bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(top: 40),
                child: (_capturedImage != null)
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.file(
                          _capturedImage!,
                        ),
                      )
                    : const SizedBox()),
          ),
          (_capturedImage == null)
              ? Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(30.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      _pickImageFromCamera();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    ),
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    label: const Text(
                      "Click Photo",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 160,
                        child: OutlinedButton.icon(
                          onPressed: () {
                            _pickImageFromCamera();
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor:
                                const Color.fromRGBO(147, 76, 234, 1),
                            side: const BorderSide(
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                          ),
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            size: 16,
                          ),
                          label: const Text(
                            "Retake Photo",
                            style: TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            isLoading = true;
                            _displayProgressBottomSheet();
                            Timer(const Duration(seconds: 2), () {
                              setState(() {
                                isLoading = false;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddAcScreen()));
                            });
                            /*Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) =>
                               const ServiceCostEstimateScreen()));*/
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(147, 76, 234, 1),
                          ),
                          icon: const Icon(
                            Icons.check_circle_outline_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          label: const Text(
                            "Approve",
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
                )
        ],
      ),
    );
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      _capturedImage = File(returnedImage.path);
    });
  }

  Future _displayProgressBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  (isLoading == true)
                      ? const Center(child: CircularProgressIndicator())
                      : const Icon(
                          Icons.check_circle_outline_outlined,
                          size: 50,
                        ),
                  Text(
                    (isLoading)
                        ? "Please wait while we’re verifying your photo..."
                        : "Successfully captured the image",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  )
                ],
              ),
            ));
  }
}
