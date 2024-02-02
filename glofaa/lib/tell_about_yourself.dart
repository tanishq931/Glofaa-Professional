import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/choose_city_screen.dart';
import 'package:glofaa/choose_work_screen.dart';
import 'package:glofaa/income_acc_to_work_hour.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class TellAboutYourselfScreen extends StatefulWidget {
  const TellAboutYourselfScreen({super.key});

  @override
  State<TellAboutYourselfScreen> createState() =>
      _TellAboutYourselfScreenState();
}

enum Type { Agency, Professional }

class _TellAboutYourselfScreenState extends State<TellAboutYourselfScreen> {
  String? workSelected, citySelected;
  var mobileNo = TextEditingController();

  List listItems = ["Item1", "Item2", "Item3", "Item4", "Item5"];
  List cityItems = [
    "cityItem1",
    "cityItem2",
    "cityItem3",
    "cityItem4",
    "cityItem5"
  ];
  Type? _type;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 82,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: ColorResource.grey_2)
          ),
          child: Center(
            child: InkWell(
              onTap:() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IncomeSetupScreen()));},
              child: Center(
                child: Container(
                  height: 58,
                  width: 341,
                  decoration: BoxDecoration(
                    color: ColorResource.selectLanguageButton,
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Center(
                    child: Text("Continue",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.white),),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top:45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height:55,
                width: 139,
                margin: EdgeInsets.only(right: 16,bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(44),
                  border: Border.all(color: ColorResource.borderColor,width: 3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Translation.png"),
                    Text("English",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeDoubleExtraLarge, ColorResource.black),)
                  ],
                ),
              )

            ],
          ),
          Stack(
            children: [
              Container(
                height: 56,
                width: double.infinity,
                color: Colors.orangeAccent,
              ),
              Positioned(
                bottom: 0.0,
                  child:Container(
                height: 54,
                width: 142,
                color: Colors.lightGreen,
              )),
              Positioned(
                left: 45,
                  top:20,
                  child: Text("Few more step to see your earnings!",style:  StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),)),
              Positioned(
                top:18,
                  child: Image.asset("assets/images/Rupee.png")),
              Positioned(
                bottom: 10,
                  left: 2,
                  child: Image.asset("assets/images/ChristmasStar.png",height: 11.13,width: 27.45,)),
              Positioned(
                top: 10,
                  left: 35,
                  child: Image.asset("assets/images/ChristmasStar.png",height: 11.13,width: 27.45,)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22,top: 20),
            child: Text("Tell Us About YourSelf",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeDoubleExtraLarge, ColorResource.black,),),
          ),
          const SizedBox(
            height: 15,
          ),
              Container(
                margin: const EdgeInsets.only(left:28,bottom: 5),
                child: const Text(
                  "What's your name?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Center(
                  child: SizedBox(
                    height: 82,
                    width: 390,
                    child: TextField(
                      // keyboardType: TextInputType.number,
                      // inputFormatters: [
                      //   FilteringTextInputFormatter.digitsOnly,
                      // ],
                      controller: mobileNo,

                      style: const TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 15.5),
                      decoration: InputDecoration(
                        hintText: "Enter name",
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromRGBO(147, 76, 234, 1),
                              ),
                              borderRadius: BorderRadius.circular(79)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(79)),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,vertical:21
                          )),
                    ),
                  ),
                ),
              ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: RadioListTile(
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10)),
          //           title: Text(Type.Agency.name),
          //           dense: true,
          //           contentPadding: EdgeInsets.zero,
          //           value: Type.Agency,
          //           groupValue: _type,
          //           onChanged: (value) {
          //             setState(() {
          //               _type = value;
          //             });
          //           }),
          //     ),
          //     const SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //       child: RadioListTile(
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10)),
          //           title: Text(Type.Professional.name),
          //           dense: true,
          //           contentPadding: EdgeInsets.zero,
          //           value: Type.Professional,
          //           groupValue: _type,
          //           onChanged: (value) {
          //             setState(() {
          //               _type = value;
          //             });
          //           }),
          //     ),
          //   ],
          // ),
          Container(
            margin: const EdgeInsets.only(left:28,bottom: 5),
            alignment: Alignment.topLeft,
            child: const Text(
              "What’s work do you do?",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1),),
                  borderRadius: BorderRadius.circular(79),

                )
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ChooseWorkScreen()));

              },
              child: const Padding(
                padding:  EdgeInsets.only(left: 16,right:16),
                child:  SizedBox(
                height: 50,
                  width: 390,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 220,
                        child: Text("Select Work", style: TextStyle(
                          color: Color.fromRGBO(117, 117, 117, 1.0),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 15),
                        ),
                      ),

                      Icon(Icons.expand_more_rounded, size: 25,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left:28,bottom: 5),
            alignment: Alignment.topLeft,
            child: const Text(
              "Where do you live?",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1),),
                        borderRadius: BorderRadius.circular(79),

                      )
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const ChooseCityScreen()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right:16),
                    child: const SizedBox(
                      height: 50,
                      width: 390,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 220,
                            child: Text("Select City", style: TextStyle(
                                color: Color.fromRGBO(117, 117, 117, 1.0),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 15),
                            ),
                          ),

                          Icon(Icons.expand_more_rounded, size: 25,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          const SizedBox(
            height:28,
          ),
          // Container(
          //   alignment: Alignment.topLeft,
          //   child: const Text(
          //     "Area Pin Code",
          //     style: TextStyle(
          //         fontWeight: FontWeight.w600,
          //         fontFamily: 'Poppins',
          //         fontSize: 15),
          //   ),
          // ),
          // const SizedBox(
          //   height: 5,
          // ),
          // SizedBox(
          //   height: 40,
          //   child: TextField(
          //     keyboardType: TextInputType.number,
          //     inputFormatters: [
          //       FilteringTextInputFormatter.digitsOnly,
          //     ],
          //     controller: mobileNo,
          //     style: const TextStyle(
          //         color: Color.fromRGBO(147, 76, 234, 1),
          //         fontWeight: FontWeight.w500,
          //         fontFamily: 'Poppins',
          //         fontSize: 15.5),
          //     decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //             borderSide: const BorderSide(
          //               color: Color.fromRGBO(147, 76, 234, 1),
          //             ),
          //             borderRadius: BorderRadius.circular(10)),
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(10)),
          //         contentPadding: const EdgeInsets.symmetric(
          //           horizontal: 15,
          //         )),
          //   ),
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Flex(direction: Axis.horizontal, children: [
              Expanded(
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: RichText(
                    text: const TextSpan(
                        text: "By Proceeding, you agree to Urban Company’s ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 11),
                        children: [
                          TextSpan(
                            text: "Term & conditions",
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Poppins',
                                fontSize: 11),
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 11),
                          ),
                          TextSpan(
                            text: "Privacy policy",
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 11),
                          ),
                        ]),
                  ),
                  dense: true,
                  tileColor: const Color.fromRGBO(237, 222, 255, 1),
                  contentPadding: EdgeInsets.zero,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ),
            ]),
          ),
          const SizedBox(
            height:28,
          ),
        ]),
      ),
    ));
  }

/* Widget myDropdownButton(String hint,String? valueSelected, List list){
    return Container(
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(147, 76, 234, 1),),
          borderRadius: BorderRadius.circular(10)
      ),
      child: DropdownButton(
          hint: Text(hint),
          value: valueSelected,
          isExpanded: true,
          borderRadius: BorderRadius.circular(10),
          iconSize: 36,
          padding: const EdgeInsets.only(left: 20, right: 20),
          underline: const SizedBox(),
          items: list.map((valueItem){
            return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem));
          }).toList(),
          onChanged: (value){
            setState(() {
              valueSelected = value as String?;
            });
          }
      ),
    );
  }*/
}
