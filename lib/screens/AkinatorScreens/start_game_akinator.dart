import 'package:akro/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class StartGameAkinatorScreen extends StatefulWidget {
  _StartGameAkinatorScreenState createState() => _StartGameAkinatorScreenState();
}

class _StartGameAkinatorScreenState extends State<StartGameAkinatorScreen> {


  String data = "";
  String data2 = "";
  String data3 = "";
  String data4 = "";
  String nameKey = "_key_name";
  String nameKey2 = "_key_name2";
  String nameKey3 = "_key_name3";
  String nameKey4 = "_key_name4";

  @override
  void initState() {
    super.initState();
    setData();
    setData2();
    setData3();
    setData4();
  }


  Future<String?> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey);
  }
  Future<String?> loadData2() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey2);
  }
  Future<String?> loadData3() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey3);
  }
  Future<String?> loadData4() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey4);
  }

  setData() {
    loadData().then((value) {
      setState(() {
        data = value!;
      });
    });
  }
  setData2() {
    loadData2().then((value) {
      setState(() {
        data2 = value!;
      });
    });
  }
  setData3() {
    loadData3().then((value) {
      setState(() {
        data3 = value!;
      });
    });
  }
  setData4() {
    loadData4().then((value) {
      setState(() {
        data4 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data,
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' est le maitre du jeux',
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  data2,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  data3,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  data4,
                  style: TextStyle(fontSize: 20),
                ),

              ],
            ),
            SizedBox(height: 100.0),
            Text('(En cours de développement)', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
