import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectItem extends StatefulWidget {
  final String title;
  final bool checked;
  final dynamic onChange;

  const SelectItem(
      {Key? key, required this.title, required this.checked, this.onChange})
      : super(key: key);

  @override
  State<SelectItem> createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          child: Checkbox(value: widget.checked, onChanged: widget.onChange),
        ),
        Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
