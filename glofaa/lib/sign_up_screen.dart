import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/otp_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var currentPage = 0;
  var mobileNo = TextEditingController();

  List imagesLink = [
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png"
  ];
  List texts = ["Govt certified training", "Earn Double", "Free Insurance"];
  List texts2 = ["Get certified by skill India", "And fulfill your dreams", "For you and your family"];

  @override
  Widget build(BuildContext context) {
    preloadImage("assets/images/img1.png");
    preloadImage("assets/images/img2.png");
    preloadImage("assets/images/img3.png");

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: Container(
              height: 515,
              child: PageView.builder(
                onPageChanged: (i) {
                  setState(() {
                    currentPage = i;
                  });
                },
                itemCount: 3,
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height:500,width: 500, child: Image.asset(imagesLink[i],fit: BoxFit.cover,)),
                          Positioned(
                            bottom:110,
                            left:48,
                            child: Text(
                              texts[i],
                              style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Positioned(
                            bottom:75,
                            left:80,
                            right:80,
                            child: Text(
                              texts2[i],
                              style: const TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                              bottom:45,
                              right: 110,
                              left: 110,
                              child: dotIndicator()),
                  ],
                      ),

                    ],
                  );
                },
              ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 40,
              ),
              // height: 40,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.phone,
                controller: mobileNo,
                style: const TextStyle(
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Poppins',
                    fontSize: 15),
                decoration:  InputDecoration(
                  isCollapsed: true,
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 2,),
                      Image.asset("assets/images/myindiaflag.png"),
                      SizedBox(width: 2,),
                      Text(
                        "+91",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                      Container(
                        height:24,
                        width: 2,
                        color: ColorResource.black,
                      ),
                      SizedBox(width:20,)
                    ],
                  ),
                  hintText: "Enter Mobile No",suffixStyle: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/updatetick.png"),
                SizedBox(width: 4,),
                Text("Get account update on",style:  StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),),
                SizedBox(width: 4,),
                Image.asset("assets/images/WhatsApp.png"),
                SizedBox(width: 4,),
                Text("whatsApp",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black), )
              ],
            ),
            SizedBox(height: 28,),
            InkWell(
              onTap:() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpScreen()));},
              child: Container(
                height: 58,
                width: 341,
                decoration: BoxDecoration(
                  color: ColorResource.selectLanguageButton,
                  borderRadius: BorderRadius.circular(75),
                ),
                child: Center(
                  child: Text("Login In / Sign up",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.white),),
                ),
              ),
            )
          ],
        ));
  }

  Widget dotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentPage == 0
            ? Container(
          height: 8,
          width: 44,
           margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorResource.white
          ),
        )
            : Container(
          height: 8,
          width: 44,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorResource.grey_3.withOpacity(.6),
          ),
        ),
        currentPage == 1
            ?Container(
          height: 8,
          width: 44,
           margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorResource.white
          ),
        )
            : Container(
          height: 8,
          width: 44,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorResource.grey_3.withOpacity(.6),
          ),
        ),
        currentPage == 2
            ?  Container(
          height: 8,
          width: 44,
           margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorResource.white
          ),
        )
            : Container(
          height: 8,
          width: 44,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorResource.grey_3.withOpacity(.6),
          ),
        ),
      ],
    );
  }

  Future<void> preloadImage(String url) async {
    await precacheImage(AssetImage(url), context);
  }
}
