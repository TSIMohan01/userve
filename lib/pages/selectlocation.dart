import 'package:flutter/material.dart';
import 'package:userve/components/SelectItems.dart';
import 'package:userve/components/header.dart';
import 'package:userve/components/locationFooter.dart';

class SelectLocation extends StatefulWidget {
  final dynamic toggleIsSelect;
  final List<String> items;
  final List<bool> itemPicked;
  const SelectLocation(
      {Key? key,
      this.toggleIsSelect,
      required this.items,
      required this.itemPicked})
      : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // print(itemPicked);
    print('__');
    return Column(
      children: [
        const Header(title: "Locations"),
        Container(
          height: height - 70 - 135,
          width: width * 1,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...widget.items.map((String item) {
                    var index = widget.items.indexOf(item);
                    // if (!itemPicked[index]) itemPicked.add(false);
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SelectItem(
                        title: item,
                        checked: widget.itemPicked[index],
                        onChange: (val) {
                          setState(
                            () {
                              widget.itemPicked[index] = val;
                            },
                          );
                          // itemPicked[index] = val;
                          print(widget.itemPicked);
                        },
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ),
        LocationFooter(
          onTap: () => widget.toggleIsSelect(),
        ),
      ],
    );
  }
}
