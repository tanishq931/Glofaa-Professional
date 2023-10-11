import 'package:flutter/material.dart';

class ChooseCityScreen extends StatefulWidget {
  const ChooseCityScreen({super.key});

  @override
  State<ChooseCityScreen> createState() => _ChooseCityScreenState();
}

class _ChooseCityScreenState extends State<ChooseCityScreen> {
  dynamic g1;
  var searchQuery = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Where do you live?",
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
              height: 40,
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
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(147, 76, 234, 1),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return RadioListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      title: Text(
                        "New Delhi ${index + 1}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                      dense: true,
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: EdgeInsets.zero,
                      value: "$index",
                      groupValue: g1,
                      onChanged: (value) {
                        setState(() {
                          g1 = value!;
                        });
                      });
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
