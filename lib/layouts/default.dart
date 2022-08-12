import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final bool hasFooter;
  final bool hasBack;
  final Widget body;
  final bool hasNoAppBar;

  const DefaultLayout({
    Key? key,
    required this.hasFooter,
    required this.hasBack,
    required this.body,
    required this.hasNoAppBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        body,
      ],
    );
  }
}
