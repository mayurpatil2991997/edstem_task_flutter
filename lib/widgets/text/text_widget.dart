import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatefulWidget {
  final String userName;
  final String family;
  final FontWeight? fontWeight;
  final double? textSize;
  final Color textColor;

  const TextWidget({Key? key, required this.userName, required this.family, this.fontWeight, this.textSize, required this.textColor}) : super(key: key);


  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.userName,
      style: GoogleFonts.getFont(
          widget.family,
          fontWeight: widget.fontWeight,
          fontSize: widget.textSize,
          color: widget.textColor
      ),
    );
  }
}
