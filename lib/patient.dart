import 'package:doctor/bottombar.dart';
import 'package:doctor/hexacolorcode.dart';
import 'package:flutter/material.dart';

class Patient extends StatefulWidget {
  const Patient({Key? key}) : super(key: key);

  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConvert('edf0f3'),
      appBar: AppBar(
        backgroundColor: colorConvert('edf0f3'),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: colorConvert('3f3f3f'),
        ),
        title: Center(
          child: Text(
            "Patient",
            style: TextStyle(
              color: colorConvert('3f3f3f'),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.040,
                left: MediaQuery.of(context).size.width * 0.040,
              ),
              child: Icon(
                Icons.search,
                color: colorConvert('3f3f3f'),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            docttextshow(context)
          ],
        ),
      ),
      bottomNavigationBar: bottombar(),
    );
  }
}

Widget docttextshow(BuildContext context) {
  return Column(
    children: [
      docttext(context, "John Doe", "Next Assignment", "Today"),
      docttext(context, "Will Barrow", "Next Assignment", "Tomorrow"),
      docttext(context, "Eric Wiget", "Next Assignment", "Wed,Jan 27, 2021"),
      docttext(
          context, "Dainee Ameter", "Next Assignment", "Tues,Dec 18, 2020"),
      docttext(context, "Hans Down", "Next Assignment", "Monday,Dec 16, 2020"),
      docttext(context, "Dane Smith", "Next Assignment", "Satu,Dec 11, 2020"),
      docttext(context, "Will Barrow", "Next Assignment", "Fri,Dec 5, 2020"),
    ],
  );
}

Widget docttext(BuildContext context, String text1, text2, time) {
  return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.010,
        bottom: MediaQuery.of(context).size.height * 0.010,
        left: MediaQuery.of(context).size.width * 0.040,
        right: MediaQuery.of(context).size.width * 0.040,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.020,
        left: MediaQuery.of(context).size.width * 0.005,
        bottom: MediaQuery.of(context).size.height * 0.020,
        right: MediaQuery.of(context).size.width * 0.0050,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0, color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
        ),
        title: Text(
          text1,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text2,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Text(
              time,
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ));
}
