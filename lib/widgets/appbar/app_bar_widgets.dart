import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      toolbarHeight: 100,
      leading: const Icon(
        Icons.menu,
        size: 35.0,
        color: Colors.grey,
      ),
      title: Column(
        children: [
          Image.asset(
            'assets/images/logo_image.png',
            width: 70.0,
          ),
          const Text(
            "Trinity Mar Thoma Church, Houston",
            style: TextStyle(
                color: Color.fromRGBO(53, 61, 101, 10),
                fontSize: 12.0
            ),
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
