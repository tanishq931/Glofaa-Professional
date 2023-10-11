import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/profile_info_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var otp1 = TextEditingController();
  var otp2 = TextEditingController();
  var otp3 = TextEditingController();
  var otp4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 80.0, right: 30.0, bottom: 20.0),
            child: SizedBox(
                height: 300, child: Image.asset("assets/images/otp_image.png")),
          ),
          const Text(
            "Enter OTP",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "OTP sent to 9201945364",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                fontSize: 15),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 48,
                height: 48,
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
                      fontSize: 23),
                  decoration: InputDecoration(
                    //isCollapsed: true,
                    counterText: "",
                    contentPadding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffd9d9d9),),
                      borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: 48,
                height: 48,
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
                      fontSize: 23),
                  decoration: InputDecoration(
                    //isCollapsed: true,
                    counterText: "",
                    contentPadding: const EdgeInsets.only(left: 16.0, top: 16.0),

                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffd9d9d9),),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: 48,
                height: 48,
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
                      fontSize: 23),
                  decoration: InputDecoration(
                    //isCollapsed: true,
                    counterText: "",
                    contentPadding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffd9d9d9),),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Container(
                width: 48,
                height: 48,
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
                      fontSize: 23),
                  decoration: InputDecoration(
                    //isCollapsed: true,
                    counterText: "",
                    contentPadding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffd9d9d9),),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.access_time),
              SizedBox(
                width: 10,
              ),
              Text(
                'Resend OTP in 00:15',
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
            width: 130,
            height: 28,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffefe2ff),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x3f000000),
                  offset: Offset(0, 4),
                  blurRadius: 2,
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.auto_mode_sharp,
                  size: 15,
                  color: Color.fromRGBO(147, 76, 234, 1),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Checking OTP',
                  style: TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileInfoScreen()));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Verify",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
