import 'package:flutter/material.dart';

class PermanentAddressScreen extends StatefulWidget {
  const PermanentAddressScreen({super.key});

  @override
  State<PermanentAddressScreen> createState() => _PermanentAddressScreenState();
}

class _PermanentAddressScreenState extends State<PermanentAddressScreen> {
  TextEditingController firstName = TextEditingController(),
      lastName = TextEditingController(),
      addressLine1 = TextEditingController(),
      countryName = TextEditingController(),
      stateName = TextEditingController(),
      cityName = TextEditingController(),
      pinCode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Permanent Address",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(147, 76, 234, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Future Orders will be delivered on this address",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "First Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: TextField(
                          // textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,
                          controller: firstName,
                          style: const TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Last Name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: TextField(
                          // textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,
                          controller: lastName,
                          style: const TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              const Text(
                "Address Line 1",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  // textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.name,
                  controller: addressLine1,
                  style: const TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15.5),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      )),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              const Text(
                "Country",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  // textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.emailAddress,
                  controller: countryName,
                  style: const TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15.5),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "State",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                child: TextField(
                  // textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.emailAddress,
                  controller: stateName,
                  style: const TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15.5),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      )),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "City",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: TextField(
                          // textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,
                          controller: cityName,
                          style: const TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "PIN Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 40,
                        width: 150,
                        child: TextField(
                          // textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,
                          controller: pinCode,
                          style: const TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 15.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const AwardAndCertificateScreen()));*/
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor:
                        const Color.fromRGBO(147, 76, 234, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Update Address",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
