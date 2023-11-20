import 'package:flutter/material.dart';
import 'package:glofaa/fill_ac_details3_services_screen.dart';

class FillACDetails2ProblemsScreen extends StatefulWidget {
  const FillACDetails2ProblemsScreen({super.key});

  @override
  State<FillACDetails2ProblemsScreen> createState() =>
      _FillACDetails2ProblemsScreenState();
}

class _FillACDetails2ProblemsScreenState
    extends State<FillACDetails2ProblemsScreen> {
  int _waterLeakage = -1;
  int _noiseProblem = -1;
  int _lessCooling = -1;
  int _noCooling = -1;
  int _noPower = -1;

  List probelms = [
    'Water Leakage',
    'Noise Problem',
    'Less Cooling',
    'No Cooling',
    'No power'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fill AC Details',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 228, 250, 0.81),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: const Text(
                'Add all details even if no service/repair work is done.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
            Column(
                children: List.generate(
                    5,
                    (index) => Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 2,
                                ),
                              ]),
                          child: ListTile(
                            title: Text(
                              probelms[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 15),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                customRadioButton(index, "No", 0),
                                const SizedBox(
                                  width: 10,
                                ),
                                customRadioButton(index, "Yes", 1),
                              ],
                            ),
                          ),
                        ))),
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20.0, top: 20, bottom: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const FillACDetails3ServicesScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                ),
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
      ),
    );
  }

  Widget customRadioButton(int index, String name, int no) {
    return SizedBox(
      height: 32,
      child: OutlinedButton(
        onPressed: () {
          setState(() {
            if (index == 0) {
              _waterLeakage = no;
            } else if (index == 1) {
              _noiseProblem = no;
            } else if (index == 2) {
              _lessCooling = no;
            } else if (index == 3) {
              _noCooling = no;
            } else if (index == 4) {
              _noPower = no;
            }
          });
        },
        style: setStyle(index, no),
        child: Text(name,
            style: TextStyle(
                color: setColor(index, no),
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15)),
      ),
    );
  }

  ButtonStyle setStyle(int index, int no) {
    if (index == 0) {
      return (_waterLeakage == no)
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
              ));
    } else if (index == 1) {
      return (_noiseProblem == no)
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
              ));
    } else if (index == 2) {
      return (_lessCooling == no)
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
              ));
    } else if (index == 3) {
      return (_noCooling == no)
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
              ));
    } else {
      return (_noPower == no)
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
              ));
    }
  }

  Color setColor(int index, int no) {
    if (index == 0) {
      return (_waterLeakage == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else if (index == 1) {
      return (_noiseProblem == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else if (index == 2) {
      return (_lessCooling == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else if (index == 3) {
      return (_noCooling == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else {
      return (_noPower == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    }
  }
}
