import 'package:flutter/material.dart';

Widget bottombar() {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    selectedLabelStyle: TextStyle(fontSize: 14),
    selectedItemColor: Colors.black,
    unselectedItemColor: Color(0xff546481),
    items: [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.blue,
          ),
          title: Text("")),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.timelapse,
          color: Colors.blue,
        ),
        title: Text(""),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.message,
          color: Colors.blue,
        ),
        title: Text(""),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Colors.blue,
        ),
        title: Text(""),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.settings_input_component_rounded,
          color: Colors.blue,
        ),
        title: Text(""),
      ),
    ],
  );
}
