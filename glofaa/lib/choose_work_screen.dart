import 'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';

class ChooseWorkScreen extends StatefulWidget {
  const ChooseWorkScreen({super.key});

  @override
  State<ChooseWorkScreen> createState() => _ChooseWorkScreenState();
}

class _ChooseWorkScreenState extends State<ChooseWorkScreen> {
  var itemCount = 3;
  dynamic g1;
  var searchQuery = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,),
        child: ListView(
          children: [ Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "What work do you do?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height:55,
                width: 410,
                child: TextField(
                  controller: searchQuery,
                  style: const TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                  maxLines: 1,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      right: 20,
                    ),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Color.fromRGBO(147, 76, 234, 1),
                    ),
                    hintText: "Search plumber, electrician etc.",
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        borderRadius: BorderRadius.circular(79)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        borderRadius: BorderRadius.circular(79)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Image.asset("assets/images/FlashOn.png",height: 31,width: 31,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Popular Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:20),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 5,
              ),
             ListTile(
               leading: Image.asset("assets/images/Beautician.png"),
               title: Text("Beautician"),
               trailing: Container(
                 height:24,
                 width: 24,
                 decoration: BoxDecoration(
                     color: ColorResource.white,
                   borderRadius: BorderRadius.circular(100),
                   border: Border.all(color: ColorResource.grey_3)
                 ),
                 child: Center(
                   child: Image.asset("assets/images/Done.png"),
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              ListTile(
                leading: Image.asset("assets/images/Beautician.png"),
                title: Text("Professional Cleaning"),
                trailing: Container(
                  height:24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: ColorResource.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: ColorResource.grey_3)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              ListTile (
                leading: Image.asset("assets/images/Beautician.png"),
                title: Text("Beautician - Fresher"),
                trailing: Container(
                  height:24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: ColorResource.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: ColorResource.grey_3)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              // Flexible(
              //   flex: (itemCount <= 5) ? 0 : 1,
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //       return RadioListTile(
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10)),
              //           title: Row(
              //             children: [
              //               Image.asset("assets/images/Beautician.png"),
              //               Text(
              //                 "Beautician ${index + 1}",
              //                 style: const TextStyle(
              //                     fontWeight: FontWeight.w500,
              //                     fontFamily: 'Poppins',
              //                     fontSize: 14),
              //               ),
              //             ],
              //           ),
              //           dense: true,
              //           controlAffinity: ListTileControlAffinity.trailing,
              //           contentPadding: EdgeInsets.zero,
              //           value: "$index",
              //           groupValue: g1,
              //           onChanged: (value) {
              //             setState(() {
              //               g1 = value!;
              //             });
              //           });
              //     },
              //     itemCount: itemCount,
              //     padding: EdgeInsets.zero,
              //     shrinkWrap: true,
              //   ),
              // ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22,right: 22),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "All Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins',
                            fontSize:20),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height:24,
                      width: 24,
                      decoration: BoxDecoration(
                          color: ColorResource.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: ColorResource.grey_3)
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Repair & Service"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Service - Freshers"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("Bathroom Renovation"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Repair & Service"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Repair & Service"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Repair & Service"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Repair & Service"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,),
                child: ListTile (
                  title: const Text("AC Repair & Service"),
                  trailing: Container(
                    height:24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: ColorResource.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: ColorResource.grey_3)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:48,left: 48),
                child: Divider(thickness: 2,),
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.only(left: 22),
              //         child: RadioListTile(
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(10)),
              //             title: Text(
              //               "Beautician ${index + 1}",
              //               style: const TextStyle(
              //                   fontWeight: FontWeight.w400,
              //                   fontFamily: 'Poppins',
              //                   fontSize: 16),
              //             ),
              //             dense: true,
              //             controlAffinity: ListTileControlAffinity.trailing,
              //             contentPadding: EdgeInsets.zero,
              //             value: "$index",
              //             groupValue: g1,
              //             onChanged: (value) {
              //               setState(() {
              //                 g1 = value!;
              //               });
              //             }),
              //       );
              //     },
              //     itemCount: 30,
              //     padding: EdgeInsets.zero,
              //   ),
              // ),
            ],
          ),
      ]
        ),
      ),
    );
  }
}
