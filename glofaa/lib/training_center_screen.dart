import 'package:flutter/material.dart';
import 'package:glofaa/onboarding_documents_screen.dart';

class TrainingCenterScreen extends StatefulWidget {
  const TrainingCenterScreen({super.key});

  @override
  State<TrainingCenterScreen> createState() => _TrainingCenterScreenState();
}

class _TrainingCenterScreenState extends State<TrainingCenterScreen> {
  int selected = 0;
  bool isSelectedChip1 = false;
  bool isSelectedChip2 = false;
  bool isSelectedChip3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        (selected == 1)?"Training Center":"All Training",
          style: const TextStyle(
              fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 30,
            child: ElevatedButton(
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnBoardingDocumentsScreen()));*/
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Row(
                  children: [
                    Icon(
                      Icons.live_tv_rounded,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Live Training",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 11),
                    ),
                  ],
                )),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              customRadioButton("All Trainings", 0),
              const SizedBox(width: 20),
              customRadioButton("Pending(8)", 1),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(65, 195, 63, 1),
                  size: 15,
                )),
                showCheckmark: false,
                label: Text(
                  "Completed",
                  style: TextStyle(
                      color: (isSelectedChip1 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip1,
                selectedColor: const Color.fromRGBO(65, 195, 63, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = newState;
                  });
                },
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(74, 128, 249, 1),
                  size: 15,
                )),
                showCheckmark: false,
                label: Text(
                  "In Progress",
                  style: TextStyle(
                      color: (isSelectedChip2 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip2,
                selectedColor: const Color.fromRGBO(74, 128, 249, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip2 = newState;
                  });
                },
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                  Icons.circle,
                  color: Color.fromRGBO(242, 20, 20, 1),
                  size: 15,
                )),
                showCheckmark: false,
                label: Text(
                  "Pending",
                  style: TextStyle(
                      color: (isSelectedChip3 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip3,
                selectedColor: const Color.fromRGBO(242, 20, 20, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip3 = newState;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 110,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color.fromRGBO(217, 217, 217, 1)),
                ),
                const SizedBox(
                  width: 15,
                ),
                const SizedBox(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Learn how to get help on UC",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "App training",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Learn how to use the help center to solve your problems and get in touch with UC support",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Flexible(
                child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 250
                ),
                itemCount: 6,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 2,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const SizedBox(height: 5,),
                            Container(
                              height: 60,
                              decoration: ShapeDecoration(
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            const SizedBox(height: 10,),
                            const Text(
                              "Safety training - Ensuring partner safety at UC",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 12),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 10,),
                            const Text(
                              "Safety",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 10,),
                            const Text(
                              "Training on how does UC ensures partner safety and how to handle critical situations",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 10),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 10,),
                            
                            Container(
                              alignment: Alignment.centerRight,
                                child:(index%2 ==0)? const Icon(Icons.circle, color: Color.fromRGBO(65, 195, 63, 1),size: 16,): const Icon(Icons.circle, color: Color.fromRGBO(242, 20, 20, 1),size: 16,))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget customRadioButton(String name, int index) {
    return SizedBox(
      height: 30,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(name,
              style: TextStyle(
                  color: (selected == index)
                      ? Colors.white
                      : const Color.fromRGBO(147, 76, 234, 1),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 13)),
        ),
      ),
    );
  }
}
