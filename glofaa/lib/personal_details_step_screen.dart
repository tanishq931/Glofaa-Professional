import 'package:flutter/material.dart';
import 'package:glofaa/verify_delivery_address_screen.dart';
import 'package:glofaa/verify_vaccination.dart';

class PersonalDetailsStepScreen extends StatefulWidget {
  const PersonalDetailsStepScreen({super.key});

  @override
  State<PersonalDetailsStepScreen> createState() => _PersonalDetailsStepScreenState();
}

class _PersonalDetailsStepScreenState extends State<PersonalDetailsStepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical:5),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(230, 210, 255, 1),
                borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aadhar Card Number",
                  style: TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                ),

                SizedBox(height: 5,),

                Text(
                  "3487 4739 3487",
                  style: TextStyle(
                    color: Colors.grey,
                      fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                ),
              ],
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 210, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Document Type",
                  style: TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                ),

                SizedBox(height: 5,),

                Text(
                  "All Type Off",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                margin: EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "Mr. Alpha",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Father's Name",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "Mr. Beta",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                margin: EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date Of Birth",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "23/10/2000",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "Male",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical:5),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 210, 255, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "House No.",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                ),

                SizedBox(height: 5,),

                Text(
                  "B-231",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                margin: EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Localty",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "Lucknow",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "Lucknow",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                margin: EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pin Code",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "343088",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20.0, top: 5, bottom: 5),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 210, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "State",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 16),
                    ),

                    SizedBox(height: 5,),

                    Text(
                      "Uttar Pradesh",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500, fontFamily: 'Poppins', fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyDeliveryAddressScreen()));*/
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                "Change Details",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
