import 'package:edstem_demo_project/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class UserDetailsWidget extends StatefulWidget {
  const UserDetailsWidget({Key? key}) : super(key: key);

  @override
  _UserDetailsWidgetState createState() => _UserDetailsWidgetState();
}

class _UserDetailsWidgetState extends State<UserDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: height * 0.1,
              width: width * 0.6,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(110, 211, 223, 10),
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/location.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextWidget(
                        userName: "Address",
                        family: "Playfair Display SC",
                        textColor: Color.fromRGBO(71, 78, 115, 10),
                        textSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                      TextWidget(
                        userName: "601 Lakeland Terrace",
                        family: "Archivo",
                        textColor: Color.fromRGBO(71, 78, 115, 10),
                        textSize: 12.0,
                        fontWeight: FontWeight.normal,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Container(child: const VerticalDivider(color: Colors.red)),
          Expanded(
            flex: 1,
            child: Container(
              height: height * 0.1,
              width: width * 0.6,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(110, 211, 223, 10),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Icon(
                      Icons.call,
                      size: 12.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextWidget(
                        userName: "Phone Number",
                        family: "Playfair Display SC",
                        textColor: Color.fromRGBO(71, 78, 115, 10),
                        textSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                      TextWidget(
                        userName: "91 6456584156",
                        family: "Archivo",
                        textColor: Color.fromRGBO(71, 78, 115, 10),
                        textSize: 12.0,
                        fontWeight: FontWeight.normal,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
