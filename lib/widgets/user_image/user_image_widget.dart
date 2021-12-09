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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: Image.asset(
              'assets/images/face.png',
              // fit: BoxFit.contain,
            ),
          ),
        ),
        const TextWidget(
          family: "Playfair Display SC",
          userName: "Abraham Thomas",
          fontWeight: FontWeight.bold,
          textSize: 24.0,
          textColor: Color.fromRGBO(53, 61, 101, 10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 2.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TextWidget(
                family: "Archivo",
                userName: "Peral Land East",
                fontWeight: FontWeight.normal,
                textSize: 12.0,
                textColor: Color.fromRGBO(118, 124, 156, 10),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Image.asset(
                "assets/images/rectangle.png",
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 14.0,
              ),
              const TextWidget(
                family: "Archivo",
                userName: "#56566",
                fontWeight: FontWeight.normal,
                textSize: 12.0,
                textColor: Color.fromRGBO(118, 124, 156, 10),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Image.asset("assets/images/rectangle.png"),
              const SizedBox(
                width: 14.0,
              ),
              const TextWidget(
                family: "Archivo",
                userName: "Male",
                fontWeight: FontWeight.normal,
                textSize: 12.0,
                textColor: Color.fromRGBO(118, 124, 156, 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
