import 'dart:convert';

import 'package:edstem_demo_project/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BirthDayWidget extends StatefulWidget {
  const BirthDayWidget({Key? key}) : super(key: key);

  @override
  _BirthDayWidgetState createState() => _BirthDayWidgetState();
}

class _BirthDayWidgetState extends State<BirthDayWidget> {

  @override
  void initState() {
    readJson();
    super.initState();
  }

  List _items = [];
  Future readJson() async {
    final String response = await rootBundle.loadString('assets/birthday.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 1,
      decoration: const BoxDecoration(
        // color: Color.fromRGBO(236, 242, 248, 10),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 20.0,top: 14.0),
            child: Row(
              children: const [
                TextWidget(
                  userName: "Birthdays",
                  family: "Playfair Display SC",
                  textColor: Color.fromRGBO(53, 61, 101, 10),
                  fontWeight: FontWeight.bold,
                  textSize: 14.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                TextWidget(
                  userName: "Wedding Anniversary",
                  family: "Playfair Display SC",
                  textColor: Colors.grey,
                  fontWeight: FontWeight.bold,
                  textSize: 14.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 2.0),
            child: Image.asset(
              'assets/images/line.png',
              // fit: BoxFit.contain,
            ),
          ),
          _items.isNotEmpty ? Expanded(
            child: ListView.builder(
                itemCount: _items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context,int index){
                  return Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(70.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.network(
                            _items[index]["imageUrl"],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         TextWidget(
                           userName: _items[index]["name"] ?? "",
                           family: "Playfair Display SC",
                           textColor: const Color.fromRGBO(53, 61, 101, 10),
                           fontWeight: FontWeight.bold,
                           textSize: 13.0,
                         ),
                         TextWidget(
                           userName:  _items[index]["date"],
                           family: "Archivo",
                           textColor: const Color.fromRGBO(118, 124, 156, 10),
                           fontWeight: FontWeight.normal,
                           textSize: 10.0,
                         ),
                       ],
                     )
                    ],
                  );
                }
            ),
          ) : Container(),
        ],
      ),
    );
  }

}
