import 'package:akro/screens/AkinatorScreens/start_game_akinator.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';


class PlayerAkinatorScreen extends StatefulWidget {
  _PlayerAkinatorScreenState createState() => _PlayerAkinatorScreenState();
}

class _PlayerAkinatorScreenState extends State<PlayerAkinatorScreen> {


  String nameKey = "_key_name";
  String nameKey2 = "_key_name2";
  String nameKey3 = "_key_name3";
  String nameKey4 = "_key_name4";
  TextEditingController username1 = TextEditingController();
  TextEditingController username2 = TextEditingController();
  TextEditingController username3 = TextEditingController();
  TextEditingController username4 = TextEditingController();


  Future<bool> saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey, username1.text);
  }

  Future<bool> saveData2() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey2, username2.text);
  }

  Future<bool> saveData3() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey3, username3.text);
  }

  Future<bool> saveData4() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey4, username4.text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 1,
                  child: FittedBox(
                    fit: BoxFit.none,
                    child: Container(
                      margin: EdgeInsets.only(top: 80.0),
                      child: Text(
                        'Akinator',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w100,
                          fontSize: 70.0,
                          color: Colors.pinkAccent,
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 150.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Rentrez votre nom',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Pattaya',
                    fontWeight: FontWeight.w100,
                    fontSize: 22.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            TextField(
              controller: username1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez le nom du premier joueur',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: username2,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez le nom du deuxième joueur',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: username3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez le nom du troisième joueur',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: username4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez le nom du quatrième joueur',
              ),
            ),

            SizedBox(height: 100.0),
            Center(
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  onTap: () {
                    saveData();
                    saveData2();
                    saveData3();
                    saveData4();

                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StartGameAkinatorScreen()
                      )
                      );
                  },
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    height: 80.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: Center(
                      child: Text(
                        'Jouer !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
