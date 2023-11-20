import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glofaa/booking_calender_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {
              /* Navigator.push(context, MaterialPageRoute(builder: (context) => LiveTrainingScreen()));*/
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(246, 234, 205, 1.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.verified_user,
                  color: Colors.green,
                  size: 30,
                ),
                title: const Text(
                  'COVID Safety Centre',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Text(
                    'Learn about Symptoms, Vaccinations, Benefits provided by Glofaa ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ),
                trailing: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 1,
                        ),
                      ]),
                  child: const Icon(
                    Icons.keyboard_arrow_right,
                    size: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                titleAlignment: ListTileTitleAlignment.top,
                title: Text(
                  'Mr. Alpha',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AC Repair & Services',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          RatingBar(
                            rating: 4.6,
                            size: 22,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4.6',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                trailing: Text(
                  '57483443',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(246, 234, 205, 1.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Glofaa Technology Prizes',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Text(
                    '₹ 0 total prizes won',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Icon(
                    FontAwesomeIcons.trophy,
                    size: 35,
                    color: Color.fromRGBO(241, 182, 41, 1.0),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: const Text(
                'JOBS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BookingCalenderScreen()));
                    },
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: const Text(
                      'Your Calendar',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.work_history,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Job History',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.credit_card,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: const Text(
                      'Credit Balance',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 227, 227, 1.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        '49 credits',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.model_training,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: const Text(
                      'Training Center',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 227, 227, 1.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'New',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                  ),
                  const ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.safety_check,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Insurance',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  const ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.group_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Your helpers',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: const Text(
                'PRODUCTS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: const Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.shopping_bag_sharp,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Glofaa shop',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: const Text(
                'ACCOUNT',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: const Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.translate,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Select Language',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.account_balance_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'GST, PAN and Bank Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Account Settings',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: const Text(
                'OTHER',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.person_add_alt_1_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: const Text(
                      'Invite your friends (Refer)',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 227, 227, 1.0),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'New',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                  ),
                  const ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.person_search_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Find friends on Glofaa Technology',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: const Text(
                'SUPPORT',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: const Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.perm_phone_msg_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Contact Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
              child: const Text(
                'APP',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              margin: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                    ),
                  ]),
              child: const Column(
                children: [
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.description_outlined,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Terms of Use',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.policy_rounded,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Privacy policy',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.download_for_offline,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text(
                      'Download Glofaa Technology Customer App',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'V6.8.56R114',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final double rating, size;
  final int? ratingCount;
  final Color? color;

  const RatingBar(
      {super.key,
      required this.rating,
      this.ratingCount,
      this.size = 18,
      this.color = Colors.orange});

  @override
  Widget build(BuildContext context) {
    List<Widget> starList = [];

    int realNumber = rating.floor(); //3.55 real = 3
    int partNumber = ((rating - realNumber) * 10).ceil(); // part = 6
    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        starList.add(Icon(
          Icons.star,
          color: color,
          size: size,
        ));
      } else if (i == realNumber) {
        starList.add(SizedBox(
          height: size,
          width: size,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Icon(
                Icons.star,
                color: color,
                size: size,
              ),
              ClipRect(
                clipper: _Clipper(part: partNumber),
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: size,
                ),
              )
            ],
          ),
        ));
      } else {
        starList.add(Icon(
          Icons.star,
          color: Colors.grey,
          size: size,
        ));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: starList,
    );
  }
}

class _Clipper extends CustomClipper<Rect> {
  final int part;

  _Clipper({required this.part});

  @override
  Rect getClip(Size size) => Rect.fromLTRB(
        (size.width / 10) * part,
        0.0,
        size.width,
        size.height,
      );

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => true;
}
