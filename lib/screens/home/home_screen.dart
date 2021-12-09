import 'package:edstem_demo_project/widgets/appbar/bottom_navigator/bottom_navigator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const BottomNavigatorWidget();
  }
}