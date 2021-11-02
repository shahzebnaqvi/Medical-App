import 'package:doctor/bottombar.dart';
import 'package:doctor/hexacolorcode.dart';
import 'package:doctor/patient.dart';
import 'package:flutter/material.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({Key? key}) : super(key: key);

  @override
  _DoctorDashboardState createState() => _DoctorDashboardState();
}

class _DoctorDashboardState extends State<DoctorDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorConvert('edf0f3'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            doctorbox(context),
            doctoroptionsrow(context),
            docttext(context)
          ],
        ),
      ),
      bottomNavigationBar: bottombar(),
    );
  }
}

Widget doctorbox(BuildContext context) {
  return Stack(children: [
    Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.15,
        bottom: MediaQuery.of(context).size.height * 0.020,
        left: MediaQuery.of(context).size.width * 0.050,
        right: MediaQuery.of(context).size.width * 0.050,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.060,
        left: MediaQuery.of(context).size.width * 0.040,
        bottom: MediaQuery.of(context).size.height * 0.030,
        right: MediaQuery.of(context).size.width * 0.020,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Good Morning",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 12.0),
            child: Text("Dr. John",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eleifend blandit ullamcorper",
            style: TextStyle(
              fontSize: 11,
            ),
          )
        ],
      ),
    ),
    Positioned(
        left: 30,
        top: 50,
        child: CircleAvatar(
          radius: 50,
          backgroundImage:
              NetworkImage("https://ssc98hsc00.com/uploads/user/340558.jpeg"),
        ))
  ]);
}

Widget docttext(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.020,
      bottom: MediaQuery.of(context).size.height * 0.050,
      left: MediaQuery.of(context).size.width * 0.050,
      right: MediaQuery.of(context).size.width * 0.050,
    ),
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.030,
      left: MediaQuery.of(context).size.width * 0.040,
      bottom: MediaQuery.of(context).size.height * 0.090,
      right: MediaQuery.of(context).size.width * 0.020,
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text("Lorem ipsum dolor",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eleifend blandit ullamcorper",
          style: TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    ),
  );
}

Widget doctoroptions(BuildContext context, Color colors, String img, text) {
  return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colors,
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
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.050,
      ),
      width: 120,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image(image: AssetImage(img)),
          Row(
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          )
        ],
      ));
}

Widget doctoroptionsrow(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Patient()),
            );
          },
          child: doctoroptions(context, colorConvert('#299a80'),
              "assets/images/icon/icon1.png", "PATIENTS"),
        ),
        doctoroptions(context, colorConvert('#2486c7'),
            "assets/images/icon/icon2.png", "APPOINTMENTS"),
        doctoroptions(context, colorConvert('#eb7a31'),
            "assets/images/icon/icon3.png", "MESSAGES"),
        doctoroptions(context, colorConvert('#6d58a5'),
            "assets/images/icon/icon4.png", "ALERTS"),
      ],
    ),
  );
}
