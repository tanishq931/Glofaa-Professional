import 'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';

class ChooseCityScreen extends StatefulWidget {
  const ChooseCityScreen({super.key});

  @override
  State<ChooseCityScreen> createState() => _ChooseCityScreenState();
}

class _ChooseCityScreenState extends State<ChooseCityScreen> {
  dynamic g1;
  int? selectedIndex;
  var searchQuery = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Where do you live?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: SizedBox(
                height: 50,
                width: 349,
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
                    hintText: "Search your city",
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
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24),
                    child: Column(
                      children: [
                        ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              "New Delhi ${index + 1}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),
                            ),
                            trailing: Container(
                              height:24,
                              width: 24,
                              decoration: BoxDecoration(
                                  color: ColorResource.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: ColorResource.grey_3)
                              ),
                              child: Center(
                                child: selectedIndex == index ?Image.asset("assets/images/Done.png"):null,
                              ),
                            ),
                          onTap: (){
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                        Divider(),
                      ],
                    ),
                  );
                },
                itemCount: 19,
                padding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
