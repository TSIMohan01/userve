import 'package:flutter/material.dart';
import 'package:userve/welcome/body.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffddeed5),
      body: Body(),
    );
  }
}
