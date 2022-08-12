import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userve/Login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 66.0,
            height: 78.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Welcome",
            style: GoogleFonts.poppins(
              fontSize: 32,
              color: const Color(0xff2d2d2d),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text.rich(
            TextSpan(
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xff2d2d2d),
              ),
              children: [
                TextSpan(
                  text:
                      'If you already have an account\nand know your username and password,\n',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'tap',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ),
                ),
                TextSpan(
                  text: ' here to sign in.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            textHeightBehavior:
                const TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
            softWrap: false,
          ),
        ],
      ),
    );
  }
}
