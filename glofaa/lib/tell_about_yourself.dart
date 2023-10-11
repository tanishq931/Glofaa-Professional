import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofaa/choose_city_screen.dart';
import 'package:glofaa/choose_work_screen.dart';
import 'package:glofaa/income_acc_to_work_hour.dart';

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
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 30, bottom: 20),
              child: Image.asset("assets/images/tell_about_yourself.png")),
          const Text(
            "Tell Us About YourSelf",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    title: Text(Type.Agency.name),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    value: Type.Agency,
                    groupValue: _type,
                    onChanged: (value) {
                      setState(() {
                        _type = value;
                      });
                    }),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: RadioListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    title: Text(Type.Professional.name),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    value: Type.Professional,
                    groupValue: _type,
                    onChanged: (value) {
                      setState(() {
                        _type = value;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
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
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1),),
                borderRadius: BorderRadius.circular(10),

              )
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ChooseWorkScreen()));

            },
            child: const SizedBox(width: double.infinity,
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
          const SizedBox(
            height: 15,
          ),
          Container(
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
          TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color.fromRGBO(147, 76, 234, 1),),
                  borderRadius: BorderRadius.circular(10),

                )
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                      const ChooseCityScreen()));

            },
            child:  const SizedBox(width: double.infinity,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 220,
                    child: Text("Select City", style: TextStyle(
                        color: Color.fromRGBO(117, 117, 117, 1.0),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                        maxLines: 1,
                    ),
                  ),
                  Icon(Icons.expand_more_rounded,size: 25,),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Area Pin Code",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 40,
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              controller: mobileNo,
              style: const TextStyle(
                  color: Color.fromRGBO(147, 76, 234, 1),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 15.5),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(147, 76, 234, 1),
                      ),
                      borderRadius: BorderRadius.circular(10)),
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
          Flex(direction: Axis.horizontal, children: [
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
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IncomeSetupScreen()));
              },
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Continue",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
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
