import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _icon(70, Icons.arrow_back_ios),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: const Color(0xff2d2d2d),
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.none,
            ),
          ),
          Row(
            children: [
              _icon(70, Icons.refresh_rounded),
              _icon(70, Icons.logout_rounded),
            ],
          )
        ],
      ),
    );
  }
}

Function _icon = (double size, IconData _icon) => SizedBox.fromSize(
      size: Size(size, size), // button width and height
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.green, // splash color
          onTap: () {}, // button pressed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(_icon), // icon
              // text
            ],
          ),
        ),
      ),
    );
