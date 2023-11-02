import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glofaa/fill_ac_details2_problems_screen.dart';
import 'package:image_picker/image_picker.dart';

class FillACDetailsScreen extends StatefulWidget {
  const FillACDetailsScreen({super.key});

  @override
  State<FillACDetailsScreen> createState() => _FillACDetailsScreenState();
}

enum Capacity { option1, option2, option3, option4, option5 }

enum Inverter { option1, option2 }

enum Brand { option1, option2, option3, option4, option5, option6 }

class _FillACDetailsScreenState extends State<FillACDetailsScreen> {
  var pressure = TextEditingController();
  File? _capturedImage;

  Capacity? _capacity;
  Inverter? _inverter;
  Brand? _brand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Fill AC Details',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              (_capturedImage != null)
                  ? Container(
                      margin: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(228, 228, 250, 0.81),
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'Add all details even if no service/repair work is done.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.purpleAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                    )
                  : const SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'AC STANDING PRESSURE',
                    style: TextStyle(
                        color: Color.fromRGBO(206, 177, 20, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  Text(
                    (_capturedImage == null)
                        ? 'Time Left 09:54'
                        : 'Photo Uploaded',
                    style: TextStyle(
                        color: (_capturedImage == null)
                            ? const Color.fromRGBO(213, 54, 54, 1)
                            : Colors.green,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Upload Photo',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      (_capturedImage == null)
                          ? SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  _pickImageFromCamera();
                                  // Navigator.pop(context);
                                  /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const FillACDetailsScreen()));*/
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
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor:
                                      const Color.fromRGBO(147, 76, 234, 1),
                                ),
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.file(
                                    _capturedImage!,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                OutlinedButton.icon(
                                  onPressed: () {
                                    _pickImageFromCamera();
                                  },
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                    color: Color.fromRGBO(147, 76, 234, 1),
                                  )),
                                  icon: const Icon(FontAwesomeIcons.camera),
                                  label: const Text(
                                    "Retake Photo",
                                    style: TextStyle(
                                        color: Color.fromRGBO(147, 76, 234, 1),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Enter Pressure',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        child: TextField(
                            controller: pressure,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: Color.fromRGBO(147, 76, 234, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 15.5),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              suffix: const Text(
                                'psi',
                                style: TextStyle(
                                    color: Color.fromRGBO(147, 76, 234, 1),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  'CAPACITY',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Less than 1 Ton",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Capacity.option1,
                          groupValue: _capacity,
                          onChanged: (value) {
                            setState(() {
                              _capacity = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "1 Ton",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Capacity.option2,
                          groupValue: _capacity,
                          onChanged: (value) {
                            setState(() {
                              _capacity = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "1.5 Ton",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Capacity.option3,
                          groupValue: _capacity,
                          onChanged: (value) {
                            setState(() {
                              _capacity = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "2 Ton",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Capacity.option4,
                          groupValue: _capacity,
                          onChanged: (value) {
                            setState(() {
                              _capacity = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "More than 2 Ton",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Capacity.option5,
                          groupValue: _capacity,
                          onChanged: (value) {
                            setState(() {
                              _capacity = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  'INVERTER/NON-INVERTER',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Non-Inverter",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Inverter.option1,
                          groupValue: _inverter,
                          onChanged: (value) {
                            setState(() {
                              _inverter = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Inverter",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Inverter.option2,
                          groupValue: _inverter,
                          onChanged: (value) {
                            setState(() {
                              _inverter = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 10, top: 10),
                child: const Text(
                  'BRAND',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Voltas",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Brand.option1,
                          groupValue: _brand,
                          onChanged: (value) {
                            setState(() {
                              _brand = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "LG",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Brand.option2,
                          groupValue: _brand,
                          onChanged: (value) {
                            setState(() {
                              _brand = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Samsung",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Brand.option3,
                          groupValue: _brand,
                          onChanged: (value) {
                            setState(() {
                              _brand = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Daikin",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Brand.option4,
                          groupValue: _brand,
                          onChanged: (value) {
                            setState(() {
                              _brand = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Hitachi",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Brand.option5,
                          groupValue: _brand,
                          onChanged: (value) {
                            setState(() {
                              _brand = value;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: RadioListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Lloyd",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          value: Brand.option6,
                          groupValue: _brand,
                          onChanged: (value) {
                            setState(() {
                              _brand = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FillACDetails2ProblemsScreen()));
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
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
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
}
