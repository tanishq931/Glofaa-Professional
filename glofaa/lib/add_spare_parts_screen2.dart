import 'package:flutter/material.dart';
import 'package:glofaa/service_cost_estimate_screen.dart';

class AddSparePartsScreen2 extends StatefulWidget {
  const AddSparePartsScreen2({super.key});

  @override
  State<AddSparePartsScreen2> createState() => _AddSparePartsScreen2State();
}

enum LessCoolingReason { option1, option2 }

class _AddSparePartsScreen2State extends State<AddSparePartsScreen2> {
  LessCoolingReason? lessCoolingReason;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Spare Parts',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: const Text(
              'LESS COOLING',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                  ),
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Low GAS",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      value: LessCoolingReason.option1,
                      groupValue: lessCoolingReason,
                      onChanged: (value) {
                        setState(() {
                          lessCoolingReason = value;
                        });
                      }),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: RadioListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Electrical Component Issue",
                          style: TextStyle(
                              color: Color.fromRGBO(147, 76, 234, 1),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      value: LessCoolingReason.option2,
                      groupValue: lessCoolingReason,
                      onChanged: (value) {
                        setState(() {
                          lessCoolingReason = value;
                        });
                      }),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50.0, bottom: 50),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const ServiceCostEstimateScreen()));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
