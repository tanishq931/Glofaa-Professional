import 'package:flutter/material.dart';

class TellAboutYourWorkScreen extends StatefulWidget {
  const TellAboutYourWorkScreen({super.key});

  @override
  State<TellAboutYourWorkScreen> createState() =>
      _TellAboutYourWorkScreenState();
}

enum Ques1 { option1, option2, option3 }

enum Ques2 { option1, option2, option3 }

enum Ques3 { option1, option2, option3, option4 }

enum Ques4 { option1, option2 }

class _TellAboutYourWorkScreenState extends State<TellAboutYourWorkScreen> {
  Ques1? _ques1;
  Ques2? _ques2;
  Ques3? _ques3;
  Ques4? _ques4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tell us about your work",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Card(
                color: Color.fromRGBO(147, 76, 234, 1),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "How many years of experience do you have?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "0-1 years",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques1.option1,
                  groupValue: _ques1,
                  onChanged: (value) {
                    setState(() {
                      _ques1 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "1-3 years",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques1.option2,
                  groupValue: _ques1,
                  onChanged: (value) {
                    setState(() {
                      _ques1 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "More tha 3 years",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques1.option3,
                  groupValue: _ques1,
                  onChanged: (value) {
                    setState(() {
                      _ques1 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Card(
                color: Color.fromRGBO(147, 76, 234, 1),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Where have you worked before?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Branded stores",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques2.option1,
                  groupValue: _ques2,
                  onChanged: (value) {
                    setState(() {
                      _ques2 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Service Center",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques2.option2,
                  groupValue: _ques2,
                  onChanged: (value) {
                    setState(() {
                      _ques2 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Local market shops/Own Business",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques2.option3,
                  groupValue: _ques2,
                  onChanged: (value) {
                    setState(() {
                      _ques2 = value;
                    });
                  }),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Card(
                color: Color.fromRGBO(147, 76, 234, 1),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "What is your current monthly earning?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Less than INR 20000",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques3.option1,
                  groupValue: _ques3,
                  onChanged: (value) {
                    setState(() {
                      _ques3 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "INR 20000-40000",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques3.option2,
                  groupValue: _ques3,
                  onChanged: (value) {
                    setState(() {
                      _ques3 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "INR 40000-80000",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques3.option3,
                  groupValue: _ques3,
                  onChanged: (value) {
                    setState(() {
                      _ques3 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "More than INR 80000",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques3.option4,
                  groupValue: _ques3,
                  onChanged: (value) {
                    setState(() {
                      _ques3 = value;
                    });
                  }),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Card(
                color: Color.fromRGBO(147, 76, 234, 1),
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "How many family members do you have?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Less than 3 members",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques4.option1,
                  groupValue: _ques4,
                  onChanged: (value) {
                    setState(() {
                      _ques4 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RadioListTile(
                  tileColor: const Color.fromRGBO(230, 210, 255, 1),
                  controlAffinity: ListTileControlAffinity.trailing,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Service Center",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  value: Ques4.option2,
                  groupValue: _ques4,
                  onChanged: (value) {
                    setState(() {
                      _ques4 = value;
                    });
                  }),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 110,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        side: const BorderSide(
                            color: Color.fromRGBO(147, 76, 234, 1)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Save",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      /*Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInformationScreen()));*/
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Continue",
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
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
    );
  }
}
