import 'package:flutter/material.dart';
import 'package:glofaa/service_cost_estimate_screen.dart';

class FillACDetails3ServicesScreen extends StatefulWidget {
  const FillACDetails3ServicesScreen({super.key});

  @override
  State<FillACDetails3ServicesScreen> createState() =>
      _FillACDetails3ServicesScreenState();
}

class _FillACDetails3ServicesScreenState
    extends State<FillACDetails3ServicesScreen> {
  int _wetServicing = -1;
  int _refreshServicing = -1;
  int _installation = -1;
  int _unInstallation = -1;
  int _repair = -1;

  List Probelms = [
    'Wet Servicing',
    'Refresh Servicing',
    'Installation',
    'Uninstallation',
    'Repair'
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(228, 228, 250, 0.81),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 8),
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
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                        ),
                      ]),
                  child: ListTile(
                    title: Text(
                      Probelms[index],
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
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ServiceCostEstimateScreeen()));
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
              _wetServicing = no;
            } else if (index == 1) {
              _refreshServicing = no;
            } else if (index == 2) {
              _installation = no;
            } else if (index == 3) {
              _unInstallation = no;
            } else if (index == 4) {
              _repair = no;
            }
          });
        },
        style: setStyle(index, no),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Text((name == 'Yes' && index != 4) ? '$name ' : name,
                  style: TextStyle(
                      color: setColor(index, no),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15)),
              (name == 'Yes' && index != 4)
                  ? Icon(
                      Icons.currency_rupee_rounded,
                      size: 16,
                      color: setColor(index, no),
                    )
                  : const SizedBox(),
              (name == 'Yes')
                  ? Text(
                      (index == 0)
                          ? ' 599'
                          : (index == 1)
                              ? ' 449'
                              : (index == 2)
                                  ? '1499'
                                  : (index == 3)
                                      ? ' 649'
                                      : '',
                      style: TextStyle(
                          color: setColor(index, no),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 15))
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  ButtonStyle setStyle(int index, int no) {
    if (index == 0) {
      return (_wetServicing == no)
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
      return (_refreshServicing == no)
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
      return (_installation == no)
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
      return (_unInstallation == no)
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
      return (_repair == no)
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
      return (_wetServicing == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else if (index == 1) {
      return (_refreshServicing == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else if (index == 2) {
      return (_installation == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else if (index == 3) {
      return (_unInstallation == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    } else {
      return (_repair == no)
          ? Colors.white
          : const Color.fromRGBO(147, 76, 234, 1);
    }
  }
}
