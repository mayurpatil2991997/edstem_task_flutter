import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
