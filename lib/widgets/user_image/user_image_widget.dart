import 'package:edstem_demo_project/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class UserImageWidget extends StatefulWidget {
  const UserImageWidget({Key? key}) : super(key: key);

  @override
  _UserImageWidgetState createState() => _UserImageWidgetState();
}

class _UserImageWidgetState extends State<UserImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          height: 110.0,
          width: 110.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(70.0),
          ),
          child: Image.asset(
            'assets/images/face.png',
            // fit: BoxFit.contain,
          ),
        ),
        const TextWidget(
          family: "Playfair Display SC",
          userName: "Abraham Thomas",
          fontWeight: FontWeight.bold,
          textSize: 24.0,
          textColor: Color.fromRGBO(53, 61, 101, 10),
        ),
      ],
    );
  }
}
