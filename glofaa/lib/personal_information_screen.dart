import 'package:flutter/material.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  var email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Personal Information",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Card(
            margin:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            color: const Color.fromRGBO(230, 210, 255, 1),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Profile Photo",
                  style: TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 60.0,
                  child: Image.asset(
                    "assets/images/signIn.png",
                    width: 250,
                    height: 250,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 110,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  height: 23,
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                      onPressed: () {
                        /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnBoardingDocumentsScreen()));*/
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Edit Photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 11),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "Email Id",
                    style: TextStyle(
                        color: Color.fromRGBO(147, 76, 234, 1),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 40,
                  child: TextField(
                    // textAlignVertical: TextAlignVertical.center,
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    style: const TextStyle(
                        color: Color.fromRGBO(147, 76, 234, 1),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                        )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnBoardingDocumentsScreen()));*/
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Product Delivery Address",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 70),
            child: ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BankDetailsScreen()));*/
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
