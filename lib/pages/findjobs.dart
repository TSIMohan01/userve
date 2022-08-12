import 'package:flutter/material.dart';
import 'package:userve/components/dropdown.dart';
import 'package:userve/components/header.dart';
import 'package:userve/components/jobFooter.dart';
import 'package:userve/components/jobitem.dart';
import 'package:userve/pages/selectlocation.dart';

class FindJobs extends StatefulWidget {
  const FindJobs({Key? key}) : super(key: key);

  @override
  State<FindJobs> createState() => _FindJobsState();
}

class _FindJobsState extends State<FindJobs> {
  bool isSelect = false;
  List<bool> itemPicked = [];
  List<String> items = [
    'Mumbai',
    'Delhi',
    'Bangalore',
    'Hyderabad',
    'Puducherry',
  ];
  @override
  void initState() {
    super.initState();
    isSelect = false;
    itemPicked = List.filled(items.length, false);
  }

  @override
  void dispose() {
    super.dispose();
  }

  toggleIsSelect() {
    setState(() {
      isSelect = !isSelect;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(isSelect);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    int sellength = itemPicked.where((e) => e).length;
    String text = sellength > 0 ? '$sellength selected' : 'Select';
    return Container(
      // height: height - 70 - (height * 0.14),
      width: width * 1,
      child: isSelect
          ? SelectLocation(
              toggleIsSelect: () => toggleIsSelect(),
              items: items,
              itemPicked: itemPicked,
            )
          : Column(
              children: [
                const Header(title: "Find Jobs"),
                DropDown(toggleIsSelect: () => toggleIsSelect(), text: text),
                Container(
                  height: height - 70 - 120 - 135,
                  width: width * 1,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 20.0, right: 30.0, bottom: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          JobItem(),
                          JobItem(),
                          JobItem(),
                          JobItem(),
                          JobItem(),
                          JobItem(),
                        ],
                      ),
                    ),
                  ),
                ),
                const JobFooter(),
              ],
            ),
    );
  }
}
