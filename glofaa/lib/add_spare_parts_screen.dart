import 'package:flutter/material.dart';

import 'add_spare_parts_screen2.dart';

class AddSparePartsScreen extends StatefulWidget {
  const AddSparePartsScreen({super.key});

  @override
  State<AddSparePartsScreen> createState() => _AddSparePartsScreenState();
}

class _AddSparePartsScreenState extends State<AddSparePartsScreen> {
  final List _fansAndMotorsList = [
    'Replace Flap/Swing Motor',
    'Blower replaced',
    'Blower motor replaced',
    'Fan motor outdoor',
  ];
  final List _fansAndMotorsPriceList = [
    '₹899',
    '₹1599',
    '₹2699',
    '₹2299',
  ];
  final List _fansAndMotorsCountList = List.generate(4, (index) => 0);

  final List<String> _gasChargingList = [
    'Gas Charging',
    'Flair nut replaced',
    'Condenser repaired',
    'Copper Coil Condenser 1 ton Split',
    'Copper Coil Condenser 1.5 ton Split',
    'Copper Coil Condenser 2 ton Split',
    'Service valve replaced',
    'Copper Cooling Coil',
    'Capillary and filter replaced',
    'Compressor 0.8-1 ton',
    'Compressor 1.5 ton',
    'Compressor 2 ton',
    'Expansion valve replaced',
    'Dead nut  (1 pc)',
    'U Band replaced (1 pc)',
    'Pin valve for window AC'
  ];

  final List _gasChargingPriceList = [
    '₹2200',
    '₹150',
    '₹500',
    '₹3500',
    '₹4000',
    '₹4500',
    '₹400',
    '₹6000',
    '₹350',
    '₹6500',
    '₹7500',
    '₹9200',
    '₹1200',
    '₹50',
    '₹50',
    '₹50'
  ];

  final List _gasChargingCountList = List.generate(16, (index) => 0);

  final List _installReinstallList = [
    '1m copper pipe set',
    'Split AC Wall stand',
    'Outdoor unit reinstalled',
    'Indoor unit reinstalled',
    'Drain pipe (1m)',
    'Fastner complete set',
    'Floor stand',
    'Universal back plate',
  ];

  final List _installReinstallPriceList = [
    '₹900',
    '₹550',
    '₹799',
    '₹699',
    '₹100',
    '₹200',
    '₹750',
    '₹300',
  ];

  final List _installReinstallCountList = List.generate(8, (index) => 0);

  final List _electricalPartList = [
    'Non-Inverter PCB repaired',
    'Inverter PCB repaired',
    'Replace LVT',
    'Capacitor 2-5 mfd',
    'Capacitor 10-25 mfd',
    'Capacitor 35-50 mfd',
    'Capacitor 50-60 mfd',
    'Replace sensor',
    'Contactor replaced',
    'Contactor Daikin/o-General',
    'Convert PCB with remote',
  ];

  final List _electricalPartPriceList = [
    '₹1500',
    '₹4000',
    '₹1399',
    '₹599',
    '₹749',
    '₹749',
    '₹749',
    '₹849',
    '₹999',
    '₹1949',
    '₹1500'
  ];

  final List _electricalPartCountList = List.generate(11, (index) => 0);

  final List _minorRepairList = [
    'Water leakage Repaired - Split AC',
    'Water leakage - Window AC',
    'Adjust grill Locks',
    'Adjust pipe and tight compressor screw',
    'Connector wires replaced(1m)',
    'tighten/Replace Thimble'
  ];

  final List _minorRepairPriceList = [
    '₹___',
    '₹599',
    '₹349',
    '₹349',
    '₹449',
    '₹399'
  ];

  final List _minorRepairCountList = List.generate(6, (index) => 0);

  final List _otherPartsList = [
    'AC fan blade',
    'Grill Cover',
    'Swing blade replaced',
    'Universal remote',
    'Compressor grommets set',
    'Rubber washer (1 pc)',
    'Water tray',
    'Sleeves (per price)',
    'Stabilizer repair',
    'AC fan blade'
  ];

  final List _otherPartsPriceList = [
    '₹1199',
    '₹1849',
    '₹749',
    '₹800',
    '₹299',
    '₹50',
    '₹700',
    '₹50',
    '₹1500',
    '₹1199'
  ];

  final List _otherPartsCountList = List.generate(10, (index) => 0);

  final List _premiumAddOnsList = [
    'Anti Rust Coasting + Spray(Advance)',
    'Anti Leak Spray (Basic)',
    'AC 360 Protect Advance (Includes service)',
    'AC 360 Protect Basic (Includes service)'
  ];

  final List _premiumAddOnsPriceList = [
    '₹650',
    '₹350',
    '₹1249',
    '₹949',
  ];

  final List _premiumAddOnsCountList = List.generate(4, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Add Spare Parts',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
      )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'FANS AND MOTORS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(4, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _fansAndMotorsList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text: '  ${_fansAndMotorsPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        trailing: trailingWidget(1, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'GAS CHARGING',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(16, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _gasChargingList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text: '  ${_gasChargingPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        subtitle: (index == 0)
                            ? const Text(
                                'NEED PROBLEM PROOF',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            : null,
                        trailing: trailingWidget(2, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'INSTALLATION/RE-INSTALLATION',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(8, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _installReinstallList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text:
                                      '  ${_installReinstallPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        trailing: trailingWidget(3, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'ELECTRICAL PARTS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(11, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _electricalPartList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text: '  ${_electricalPartPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        trailing: trailingWidget(4, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'MINOR REPAIR',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(6, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _minorRepairList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text: '  ${_minorRepairPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        subtitle: (index == 0 || index == 1)
                            ? const Text(
                                'NEED PROBLEM PROOF',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 12),
                              )
                            : null,
                        trailing: trailingWidget(5, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'OTHER PARTS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(10, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _otherPartsList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text: '  ${_otherPartsPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        trailing: trailingWidget(6, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text(
                'PREMIUM ADD ONS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                children: [
                  Column(
                    children: List.generate(4, (index) {
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text.rich(
                          TextSpan(
                              text: _premiumAddOnsList[index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text: '  ${_premiumAddOnsPriceList[index]}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                )
                              ]),
                        ),
                        trailing: trailingWidget(7, index),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 50, right: 50.0, top: 30, bottom: 30),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _displayInstructionBottomSheet();
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
               */
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  "Start Job",
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

  Widget trailingWidget(int type, int i) {
    if (type == 1) {
      return (_fansAndMotorsCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _fansAndMotorsCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _fansAndMotorsCountList[i] != 0
                              ? _fansAndMotorsCountList[i]--
                              : _fansAndMotorsCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _fansAndMotorsCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _fansAndMotorsCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    } else if (type == 2) {
      return (_gasChargingCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _gasChargingCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _gasChargingCountList[i] != 0
                              ? _gasChargingCountList[i]--
                              : _gasChargingCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _gasChargingCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _gasChargingCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    } else if (type == 3) {
      return (_installReinstallCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _installReinstallCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _installReinstallCountList[i] != 0
                              ? _installReinstallCountList[i]--
                              : _installReinstallCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _installReinstallCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _installReinstallCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    } else if (type == 4) {
      return (_electricalPartCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _electricalPartCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _electricalPartCountList[i] != 0
                              ? _electricalPartCountList[i]--
                              : _electricalPartCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _electricalPartCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _electricalPartCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    } else if (type == 5) {
      return (_minorRepairCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _minorRepairCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _minorRepairCountList[i] != 0
                              ? _minorRepairCountList[i]--
                              : _minorRepairCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _minorRepairCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _minorRepairCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    } else if (type == 6) {
      return (_otherPartsCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _otherPartsCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _otherPartsCountList[i] != 0
                              ? _otherPartsCountList[i]--
                              : _otherPartsCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _otherPartsCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _otherPartsCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    } else {
      return (_premiumAddOnsCountList[i] == 0)
          ? SizedBox(
              height: 30,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    side: BorderSide(color: Colors.grey.shade400)),
                icon: const Icon(
                  Icons.add,
                  size: 20,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _premiumAddOnsCountList[i]++;
                  });
                },
                label: const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
              ),
            )
          : Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(left: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _premiumAddOnsCountList[i] != 0
                              ? _premiumAddOnsCountList[i]--
                              : _premiumAddOnsCountList[i];
                        });
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Text(
                    _premiumAddOnsCountList[i].toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const VerticalDivider(
                    color: Colors.white,
                  ),
                  Container(
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      style: IconButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          _premiumAddOnsCountList[i]++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            );
    }
  }

  Future _displayInstructionBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (_) => Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/pipe_checking.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Please Note",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  const Text(
                    "It’s mandatory to find gas leakage and record proof for the same",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  const Text(
                    "This video will be shared with customer as a proof",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 30, right: 30.0, top: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _displayInstructionBottomSheet2();
                        /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
               */
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text(
                        "Ok,I’ll record while repairing",
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
            ));
  }

  Future _displayInstructionBottomSheet2() {
    return showModalBottomSheet(
        context: context,
        builder: (_) => Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/pipe_checking.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Please Note",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  const Text(
                    "It’s mandatory to give proof for back drain cleaning in water leakage",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  const Text(
                    "This video will be shared with customer as a proof",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 30, right: 30.0, top: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _displayInstructionBottomSheet3();
                        /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
               */
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text(
                        "Ok,I’ll record while repairing",
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
            ));
  }

  Future _displayInstructionBottomSheet3() {
    return showModalBottomSheet(
        context: context,
        builder: (_) => Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/pipe_checking.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Please Note",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                  const Text(
                    "It’s mandatory to give proof after window AC servicing",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  const Text(
                    "This video will be shared with customer as a proof",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 30, right: 30.0, top: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AddSparePartsScreen2()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text(
                        "Ok,I’ll record while repairing",
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
            ));
  }
}
