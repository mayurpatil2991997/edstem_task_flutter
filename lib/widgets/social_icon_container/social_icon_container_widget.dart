import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SocialImageContainerWidget extends StatefulWidget {
  final double? height;
  final double? width;
  final double radius;
  final Color? color;

  const SocialImageContainerWidget({Key? key, this.height, this.width, required this.radius, this.color}) : super(key: key);

  @override
  _SocialImageContainerWidgetState createState() => _SocialImageContainerWidgetState();
}

class _SocialImageContainerWidgetState extends State<SocialImageContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(widget.radius),
              image: const DecorationImage(
                image: AssetImage('assets/images/twitter.png'),
              ),
            ),
          ),
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(widget.radius),
              image: const DecorationImage(
                image: AssetImage('assets/images/linkedn.png'),
              ),
            ),
          ),
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(widget.radius),
              image: const DecorationImage(
                image: AssetImage('assets/images/facebook.png'),
              ),
            ),
          ),
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(widget.radius),
              image: const DecorationImage(
                image: AssetImage('assets/images/whatsapp.png'),
              ),
            ),
          ),
          Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(widget.radius),
              image: const DecorationImage(
                image: AssetImage('assets/images/google.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
