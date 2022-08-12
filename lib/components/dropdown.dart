import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final dynamic toggleIsSelect;
  final String text;
  const DropDown({Key? key, this.toggleIsSelect, required this.text})
      : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    print(widget.toggleIsSelect);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 120,
      width: width * 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 70.0, right: 30.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Location",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Material(
              child: InkWell(
                onTap: widget.toggleIsSelect,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: width * 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.text,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox.fromSize(
                        size: Size(24, 24), // button width and height
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.arrow_circle_down_rounded), // icon
                                // text
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
