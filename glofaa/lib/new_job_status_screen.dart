import 'package:flutter/material.dart';
import 'package:glofaa/add_proof_screen.dart';
import 'package:glofaa/review_estimate_screen.dart';

class NewJobStatusScreen extends StatefulWidget {
  final bool isProofAdded;

  const NewJobStatusScreen({super.key, this.isProofAdded = false});

  @override
  State<NewJobStatusScreen> createState() => _NewJobStatusScreenState();
}

class _NewJobStatusScreenState extends State<NewJobStatusScreen> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Job Details',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.insert_chart,
              size: 18,
            ),
            label: const Text(
              'Rate Card',
              style: TextStyle(
                  color: Color.fromRGBO(147, 76, 234, 1),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 14),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 2,
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 10),
                  child: Text(
                    'AC',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 10),
                  child: Text(
                    'Split AC',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 152,
                        child: Text(
                          'Deep clean AC service (split) x 1',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      Row(
                        children: [
                          customRadioButton(null, Icons.cancel_outlined, 0),
                          const SizedBox(
                            width: 5,
                          ),
                          customRadioButton("Done", Icons.task_alt_outlined, 1),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: const Text(
                    'Please mark Done or Not Done all reported issues.',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text(
              'Add AC Details & update estimate',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                (widget.isProofAdded == true)
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReviewEstimateScreen()))
                    : _displayAddProofBottomSheet();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
              ),
              child: const Text(
                'Create Invoice',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customRadioButton(String? name, IconData iconData, int index) {
    return SizedBox(
      height: 32,
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
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              : OutlinedButton.styleFrom(
                  elevation: 5,
                  padding: EdgeInsets.zero,
                  foregroundColor: const Color.fromRGBO(147, 76, 234, 1),
                  side: const BorderSide(
                      color: Color.fromRGBO(147, 76, 234, 1), width: 1.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
          child: Row(
            children: [
              Icon(
                iconData,
                size: (name != null) ? 20 : 22,
                color: (selected == index)
                    ? Colors.white
                    : const Color.fromRGBO(147, 76, 234, 1),
              ),
              (name != null)
                  ? Text(' $name',
                      style: TextStyle(
                          color: (selected == index)
                              ? Colors.white
                              : const Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13))
                  : const SizedBox(),
            ],
          )),
    );
  }

  Future _displayAddProofBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.new_releases,
                    color: Colors.blue,
                    size: 65,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Glofaa Quality Check",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Complete photo check before proceeding",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.67),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddProofScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Icon(
                        Icons.photo_camera_outlined,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Add Proof",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
