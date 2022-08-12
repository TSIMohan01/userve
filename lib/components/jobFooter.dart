import 'package:flutter/material.dart';
import 'package:userve/components/button.dart';

class JobFooter extends StatelessWidget {
  const JobFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 1,
      height: 135,
      padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 33),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, -7),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        color: Colors.white,
      ),
      child: Material(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(
              text: "Create Route",
              lightColor: Theme.of(context).primaryColorLight,
              darkColor: Theme.of(context).primaryColor,
              count: 2,
              action: () {},
            ),
            Button(
              text: "Reset Route",
              lightColor: Theme.of(context).splashColor,
              darkColor: Theme.of(context).secondaryHeaderColor,
              count: 2,
              action: () {},
            )
          ],
        ),
      ),
    );
  }
}
