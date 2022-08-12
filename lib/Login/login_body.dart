import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:userve/Login/login_screen.dart';
import 'package:userve/layouts/default.dart';

import '../pages/findjobs.dart';

enum Rdselt {
  client,
  processor,
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  // ignore: prefer_typing_uninitialized_variables
  var _st;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 370,
            color: const Color(0xffddeed5),
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
                  "LOGIN",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: const Color(0xff2d2d2d),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: Rdselt.client,
                groupValue: _st,
                onChanged: (value) {
                  setState(
                    () {
                      _st = value;
                    },
                  );
                },
                activeColor: const Color(0xff287A09),
                fillColor: MaterialStateProperty.all(const Color(0xff287A09)),
              ),
              Text(
                "Client",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xff2d2d2d),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Radio(
                value: Rdselt.processor,
                groupValue: _st,
                onChanged: (value) {
                  setState(
                    () {
                      _st = value;
                    },
                  );
                },
                activeColor: const Color(0xff287A09),
                fillColor: MaterialStateProperty.all(const Color(0xff287A09)),
              ),
              Text(
                "Processor",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xff2d2d2d),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                    ),
                    width: 60,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff287A09),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'asset/images/profile.png',
                          width: 16,
                          height: 20,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xFFFFFFFF),
                    width: MediaQuery.of(context).size.width / 1.8,
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xff2d2d2d),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: const Color(0xff287A09),
                      decoration: InputDecoration(
                        isDense: true,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xff287A09),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xff287A09),
                          ),
                        ),
                        hintText: 'Enter Username',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                    ),
                    width: 60,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff287A09),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'asset/images/dns.png',
                          width: 16,
                          height: 20,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xFFFFFFFF),
                    width: MediaQuery.of(context).size.width / 1.8,
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xff2d2d2d),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: const Color(0xff287A09),
                      decoration: InputDecoration(
                        isDense: true,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xff287A09),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xff287A09),
                          ),
                        ),
                        hintText: 'Enter Password',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 5,
                    ),
                    width: 60,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff287A09),
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'asset/images/lock.png',
                          width: 16,
                          height: 20,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xFFFFFFFF),
                    width: MediaQuery.of(context).size.width / 1.8,
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: TextField(
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: const Color(0xff2d2d2d),
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: const Color(0xff287A09),
                      decoration: InputDecoration(
                        isDense: true,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xff287A09),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          borderSide: BorderSide(
                            color: Color(0xff287A09),
                          ),
                        ),
                        hintText: 'SubServer Name',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xff979797),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 42,
                width: MediaQuery.of(context).size.width * 0.7,
                constraints: const BoxConstraints(maxWidth: 355),
                decoration: BoxDecoration(
                  color: const Color(0xff287a09),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextButton(
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () => {
                          showDialog(
                            barrierColor: Colors.white38,
                            context: context,
                            builder: (context) {
                              return BackdropFilter(
                                  blendMode: BlendMode.src,
                                  filter:
                                      ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                                  child: Dialog(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(15.0)),
                                        color: const Color(0xFFDDEED5),
                                        border: Border.all(
                                          color: const Color(0xFF287A09),
                                          width: 1.0,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(10.0),
                                      height: 150,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'asset/images/tick.png',
                                            width: 41,
                                            height: 41,
                                            fit: BoxFit.fill,
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Text(
                                            "Successfully Registered UServe App",
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ));
                            },
                          ),
                          Timer(
                              const Duration(seconds: 2),
                              () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const DefaultLayout(
                                        hasFooter: true,
                                        hasBack: false,
                                        body: FindJobs(),
                                        hasNoAppBar: false,
                                      ),
                                    ),
                                  ))

                          // Fluttertoast.showToast(
                          //   msg: 'Pressed Elevated Button',
                          //   fontSize: 18,
                          // ),
                        }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
