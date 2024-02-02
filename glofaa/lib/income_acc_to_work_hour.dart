import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:glofaa/complete_training_and_profile_screen.dart';
import 'package:glofaa/session_screen.dart';
import 'package:glofaa/utils/resource/color_resource.dart';
import 'package:glofaa/utils/resource/dimensions_resource.dart';
import 'package:glofaa/utils/resource/style_resource.dart';

class IncomeSetupScreen extends StatefulWidget {
  const IncomeSetupScreen({super.key});

  @override
  State<IncomeSetupScreen> createState() => _IncomeSetupScreenState();
}

class _IncomeSetupScreenState extends State<IncomeSetupScreen> {
  int selected = 1;

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
                  MaterialPageRoute(builder: (context) => CompleteTrainingAndProfileScreen()));},
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              border: Border.all(color: ColorResource.grey_2,width: 2)
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                        width:139,
                        height: 78,
                        child: (selected == 3)
                            ? Image.asset(
                                "assets/images/starwithrupee.png",)
                            : (selected == 2)
                                ? Image.asset("assets/images/starwithrupee.png")
                                : Image.asset("assets/images/starwithrupee.png")),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "You can earn upto",
                      style: TextStyle(
                          color: ColorResource.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize:20),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.currency_rupee_rounded,
                            color: ColorResource.darkrupeeblue,
                            size: 35,
                          ),
                          Text(
                            (selected == 3)
                                ? "9,00,000"
                                : (selected == 2)
                                    ? "3,00,000"
                                    : "1,00,000",
                            style: const TextStyle(
                                color: ColorResource.darkrupeeblue,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                fontSize:40),
                          ),
                        ]),
                    const SizedBox(
                      height:20,
                    ),
                    InkWell(
                      onTap: (){
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 237,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(left:12,right:12,top: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/starwithrupee.png",height: 46,width: 86,),
                                        SizedBox(width: MediaQuery.of(context).size.width *0.01,),
                                        Text("Monthly earning calculation",style:  StyleResource.instance.styleBold(DimensionResource.fontSizeLarge, ColorResource.black),),
                                        SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: ColorResource.grey_2,width: 2)
                                          ),
                                          child: Center(
                                            child: Icon(Icons.keyboard_arrow_down),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                                    Divider(),
                                    SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                                    Text("These are estimates for net earning potential.Theyhave been estimated by looking at earnings of otherpartners in your location. Actual earnings may varyover time",textAlign: TextAlign.start,style:  StyleResource.instance.style(DimensionResource.fontSizeSmallTo, ColorResource.black),)

                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Per month",
                              style: TextStyle(
                                  color: ColorResource.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.info_outline_rounded,
                              //FontAwesomeIcons.ellipsis,
                              color: ColorResource.black,
                              size: 18,
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10,right:10),
                      child: const DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness:0.8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height:28,
                ),
                Text(
                  (selected == 3)
                      ? "Your work every day for 8 hrs.."
                      : (selected == 2)
                          ? "Your work every day for 6 hrs.."
                          : "Your work every day for 4 hrs..",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
                const SizedBox(
                  height:28,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customRadioButton("4 hrs", 1),
                    const SizedBox(
                      width: 15,
                    ),
                    customRadioButton("6 hrs", 2),
                    const SizedBox(
                      width: 15,
                    ),
                    customRadioButton("8 hrs", 3),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }

  Widget customRadioButton(String name, int index) {
    return SizedBox(
      height:48,
      width: 80,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
          });
        },
        style: (selected == index)
            ? ElevatedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                backgroundColor: ColorResource.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            : OutlinedButton.styleFrom(
                elevation: 5,
                padding: EdgeInsets.zero,
                backgroundColor: ColorResource.grey_3,
                side: const BorderSide(
                    color: ColorResource.grey_2, width: 1.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
        child: Text(name,
            style: TextStyle(
                color: (selected == index)
                    ? Colors.white
                    : ColorResource.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15)),
      ),
    );
  }
}
