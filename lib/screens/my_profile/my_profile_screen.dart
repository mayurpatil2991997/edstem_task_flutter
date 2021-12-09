import 'package:edstem_demo_project/widgets/appbar/app_bar_widgets.dart';
import 'package:edstem_demo_project/widgets/social_icon_container/social_icon_container_widget.dart';
import 'package:edstem_demo_project/widgets/user_image/user_image_widget.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBarWidget(),
      ),
      body: Center(
        child: Column(
          children: const [
            UserImageWidget(),
            SocialImageContainerWidget(
              height: 30.0,
              width: 30.0,
              color: Color.fromRGBO(110, 211, 223, 10),
              radius: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
