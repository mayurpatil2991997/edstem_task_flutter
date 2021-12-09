import 'package:edstem_demo_project/widgets/drawer/drawer_widget.dart';
import 'package:edstem_demo_project/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      toolbarHeight: 100,
      iconTheme: const IconThemeData(color: Colors.grey),
      title: Column(
        children: [
          Image.asset(
            'assets/images/logo_image.png',
            width: 70.0,
          ),
          const TextWidget(
            family: "Playfair Display SC",
            userName: "Trinity Mar Thoma Church, Houston",
            fontWeight: FontWeight.bold,
            textSize: 12.0,
            textColor: Color.fromRGBO(53, 61, 101, 10),
          ),
        ],
      ),
      centerTitle: true,
      flexibleSpace: Container(
        color: Colors.white,
      ),
    );
  }
}
