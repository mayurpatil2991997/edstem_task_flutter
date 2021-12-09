import 'package:edstem_demo_project/screens/home/my_profile/my_profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigatorWidget extends StatefulWidget {
  const BottomNavigatorWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigatorWidgetState createState() => _BottomNavigatorWidgetState();
}

class _BottomNavigatorWidgetState extends State<BottomNavigatorWidget> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const MyProfileScreen(),
    const Text("Family"),
    const Text("Activity"),
    const Text("Contribution"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
            ),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home_heart.png"),
            ),
            label: 'Family',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/activity.png"),
            ),
            label: 'Activity',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/contribution.png"),
            ),
            label: 'Contribution',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}