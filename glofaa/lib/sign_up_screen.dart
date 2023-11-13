import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/otp_screen.dart';

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
  List texts = ["Govt Certified Training", "Earn Double", "Free Insurance"];

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
                height: 380,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(
                  top: 40,
                ),
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
                        SizedBox(
                            height: 270, child: Image.asset(imagesLink[i])),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          texts[i],
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            dotIndicator(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: Text(
                "Wearing masks can sometimes make communication more difficult, especially for people who have trouble speaking or hearing. Here are some ways in which wearing masks can be challenging:",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
                decoration: const InputDecoration(
                  isCollapsed: true,
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "+91",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                    ],
                  ),
                  hintText: "Enter Mobile No",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "GET OTP",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ));
  }

  Widget dotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentPage == 0
            ? const Icon(Icons.circle,
                size: 13, color: Color.fromRGBO(147, 76, 234, 1))
            : const Icon(Icons.circle_outlined,
                size: 13, color: Color.fromRGBO(147, 76, 234, 1)),
        currentPage == 1
            ? const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Icon(Icons.circle,
                    size: 13, color: Color.fromRGBO(147, 76, 234, 1)),
              )
            : const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Icon(Icons.circle_outlined,
                    size: 13, color: Color.fromRGBO(147, 76, 234, 1)),
              ),
        currentPage == 2
            ? const Icon(Icons.circle,
                size: 13, color: Color.fromRGBO(147, 76, 234, 1))
            : const Icon(Icons.circle_outlined,
                size: 13, color: Color.fromRGBO(147, 76, 234, 1)),
      ],
    );
  }

  Future<void> preloadImage(String url) async {
    await precacheImage(AssetImage(url), context);
  }
}
