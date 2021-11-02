import 'package:doctor/hexacolorcode.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConvert('edf0f3'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [Text("Sds")],
            ),
            Row(
              children: [Text("data")],
            )
          ],
        ),
      ),
    );
  }
}
