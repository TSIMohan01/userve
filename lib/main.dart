import 'package:flutter/material.dart';
import 'package:userve/layouts/default.dart';
import 'package:userve/pages/findjobs.dart';
import 'package:userve/welcome/body.dart';
import 'package:userve/welcome/welcome.dart';
import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'U Serve',
      theme: ThemeData(
        primaryColor: mPrimaryColor,
        primaryColorLight: mPrimaryLightColor,
        secondaryHeaderColor: mSecondaryColor,
        splashColor: mSecondaryLightColor,
      ),
      home: const DefaultLayout(
        hasFooter: true,
        hasBack: false,
        body: FindJobs(),
        hasNoAppBar: false,
      ),
      // home: const Welcome(),
    );
  }
}
