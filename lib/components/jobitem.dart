import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobItem extends StatelessWidget {
  const JobItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 20,
            child: Material(
              child: Checkbox(
                  value: false,
                  onChanged: (bool? value) {
                    print(value);
                  }),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 7),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: width - 100,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 24, bottom: 10),
                          child: Text(
                            "D. K Basin",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xff2d2d2d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "456 main Street,\nAir India Staff Colony,",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: const Color(0xff2d2d2d),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 10, right: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFFF1A70)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          const Icon(Icons.timer),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Needed Attempt \nM M D E E W",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: const Color(0xff2d2d2d),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).primaryColor,
                  )),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, right: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "110011",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xff2d2d2d),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month_rounded,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "12-25-2021",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xff2d2d2d),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Attempt/Serve\nView on Map",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
