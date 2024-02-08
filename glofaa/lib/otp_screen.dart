import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/profile_info_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 16),
        child: ListView(
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/PinCode.png"),
                      Positioned(
                        top: 25,
                          right:0,
                          child: Image.asset("assets/images/Lock.png")),

                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(left:34,),
                child:  Text(
                  "OTP sent to 9201945364",style:  StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:110,bottom:70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: ColorResource.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
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
                        color: ColorResource.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
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
                        color: ColorResource.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
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
                          color: ColorResource.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                      ),
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
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Restart.png",color: ColorResource.selectLanguageButton,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Resend in 00:28',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height:40,
              ),
              Container(
                width: double.infinity,
                height: 26,
                color:Color.fromRGBO(248,250,250,255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/iPhoneSpinner.png"),
                    Text("Checking OTP",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.darkgreenprofessional),)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap:() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileInfoScreen()));},
                child: Center(
                  child: Container(
                    height: 58,
                    width: 341,
                    decoration: BoxDecoration(
                      color: ColorResource.selectLanguageButton,
                      borderRadius: BorderRadius.circular(75),
                    ),
                    child: Center(
                      child: Text("Verify OTP",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.white),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
        ),
      ),
    );
  }
}
