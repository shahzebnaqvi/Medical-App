import 'package:doctor/hexacolorcode.dart';
import 'package:flutter/material.dart';
import 'package:doctor/doctordashboard.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.20,
                ),
                Image.asset(
                  "assets/images/icon/logo.png",
                  width: 80,
                ),
                textbet(context),
                Row(
                  children: [
                    docttext(
                      context,
                      "I am",
                      "Nutritionist",
                    ),
                    docttext(
                      context,
                      "I am",
                      "Patient",
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [bottombutton1(context), bottombutton2(context)],
          )
        ],
      ),
    );
  }
}

Widget textbet(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
      child: Column(children: [
        Text(
          "Today You Start",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Caring About Your",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Health",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]));
}

Widget docttext(BuildContext context, String text1, text2) {
  return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.050,
        bottom: MediaQuery.of(context).size.height * 0.010,
        left: MediaQuery.of(context).size.width * 0.040,
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.030,
        left: MediaQuery.of(context).size.width * 0.05,
        bottom: MediaQuery.of(context).size.height * 0.030,
        right: MediaQuery.of(context).size.width * 0.010,
      ),
      width: MediaQuery.of(context).size.width * 0.44,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0, color: Colors.white),
        borderRadius: BorderRadius.circular(15),
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
          Text(
            text1,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ));
}

Widget bottombutton1(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.020,
      bottom: MediaQuery.of(context).size.height * 0.020,
      left: MediaQuery.of(context).size.width * 0.040,
    ),
    width: MediaQuery.of(context).size.width * 0.5,
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
      color: colorConvert('ffffff'),
      border: Border.all(width: 0, color: Colors.white),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
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
        Text(
          "Don't have an account",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        Text(
          "Create Account",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ],
    ),
  );
}

Widget bottombutton2(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DoctorDashboard()),
      );
    },
    child: Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.020,
        bottom: MediaQuery.of(context).size.height * 0.020,
      ),
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: colorConvert('2486c7'),
        border: Border.all(width: 0, color: Colors.white),
        borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    ),
  );
}
