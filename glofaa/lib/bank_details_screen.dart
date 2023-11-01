import 'package:flutter/material.dart';

class BankDetailsScreen extends StatefulWidget {
  const BankDetailsScreen({super.key});

  @override
  State<BankDetailsScreen> createState() => _BankDetailsScreenState();
}

class _BankDetailsScreenState extends State<BankDetailsScreen> {
  TextEditingController accountType = TextEditingController(),
      accountNature = TextEditingController(),
      accountNumber = TextEditingController(),
      bankName = TextEditingController(),
      bankCode = TextEditingController(),
      bankBranchAddress = TextEditingController(),
      ifscCode = TextEditingController(),
      micr = TextEditingController(),
      addressLine1 = TextEditingController(),
      branchAndCityName = TextEditingController(),
      activeAccount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Bank Details",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 20),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Account Type",
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
                            controller: accountType,
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
                          "Account Number",
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
                            controller: accountNature,
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
                  "Account Number",
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
                    controller: accountNumber,
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
                  "Bank Name",
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
                    controller: bankName,
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
                  "Bank Code",
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
                    controller: bankCode,
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
                  "Bank Branch Address",
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
                    controller: bankBranchAddress,
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
                  "IFSC Code",
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
                    keyboardType: TextInputType.visiblePassword,
                    controller: ifscCode,
                    obscureText: false,
                    style: const TextStyle(
                        color: Color.fromRGBO(147, 76, 234, 1),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15.5),
                    decoration: InputDecoration(
                        /*suffix: IconButton(icon : const Icon(Icons.remove_red_eye_rounded),  onPressed: (){

                      },),*/
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
                  "MICR",
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
                    keyboardType: TextInputType.visiblePassword,
                    controller: micr,
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
                    keyboardType: TextInputType.datetime,
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
                  "Bank & City Name",
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
                    controller: branchAndCityName,
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
                  "Active Account",
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
                    controller: activeAccount,
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
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(bottom: 20),
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
        ));
  }
}
