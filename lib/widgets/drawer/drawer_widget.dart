import 'package:edstem_demo_project/widgets/social_icon_container/social_icon_container_widget.dart';
import 'package:edstem_demo_project/widgets/text/text_widget.dart';
import 'package:edstem_demo_project/widgets/user_image/user_image_widget.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}
class _CustomDrawerState extends State<CustomDrawer> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.9,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
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
              const SizedBox(
                height: 20.0,
              ),
              const UserImageWidget(),
              const SocialImageContainerWidget(
                height: 30.0,
                width: 30.0,
                color: Color.fromRGBO(110, 211, 223, 10),
                radius: 10.0,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/membership.png',
                    width: 70.0,
                  ),
                  const TextWidget(
                    family: "Playfair Display SC",
                    userName: "Membership",
                    fontWeight: FontWeight.normal,
                    textSize: 17.0,
                    textColor: Color.fromRGBO(71, 78, 115, 10),
                  ),
                ],
              ),
              const Divider(
                height: 0.0,
                endIndent: 60,
                indent: 20.0,
                thickness: 1.0,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/editProfile.png',
                    width: 70.0,
                  ),
                  const TextWidget(
                    family: "Playfair Display SC",
                    userName: "Edit Profile",
                    fontWeight: FontWeight.normal,
                    textSize: 17.0,
                    textColor: Color.fromRGBO(71, 78, 115, 10),
                  ),
                ],
              ),
           Expanded(
             child: Column(
               mainAxisSize: MainAxisSize.max,
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.end,
               children: const [
                 Divider(
                   height: 0.0,
                   endIndent: 10,
                   indent: 10.0,
                   thickness: 1.0,
                   color: Colors.grey,
                 ),
                 SizedBox(
                   height: 10.0,
                 ),
                 Align(
                   alignment: Alignment.bottomCenter,
                   child: TextWidget(
                     family: "Playfair Display SC",
                     userName: "Logout",
                     fontWeight: FontWeight.normal,
                     textSize: 17.0,
                     textColor: Color.fromRGBO(71, 78, 115, 10),
                   ),
                 ),
               ],
             ),
           ),
                  ],
                ),
              ),
          ),
        );
  }
}