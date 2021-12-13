import 'package:akro/screens/adeux.dart';
import 'package:akro/screens/famille.dart';
import 'package:akro/screens/soiree.dart';
import 'package:akro/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:akro/screens/login_screen.dart';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import '';

class HomeScreen extends StatefulWidget{
  _HomeScreenState createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 30,
          ),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 1,
                    child: FittedBox(
                      fit: BoxFit
                          .none,
                      child: Container(
                        margin: EdgeInsets.only(top: 80.0),
                          child: Text(
                            'Akro',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w100,
                              fontSize: 110.0,
                              color: Colors.pinkAccent,
                              shadows: [
                              Shadow(
                              blurRadius: 5.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),],
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.0),
              Image.asset('assets/images/akro-logo.png',),
              SizedBox(height: 20.0),
              Center(
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(60.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FamilleScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 50.0,//MediaQuery.of(context).size.width * .08,
                      width: 260.0,//MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Famille',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w200,
                                fontSize: 25.0,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(60.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => aDeuxScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 50.0,//MediaQuery.of(context).size.width * .08,
                      width: 260.0,//MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'À Deux',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w200,
                                fontSize: 25.0,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(60.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SoireeScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 50.0,//MediaQuery.of(context).size.width * .08,
                      width: 260.0,//MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Soirée',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w200,
                                fontSize: 25.0,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            await _auth.signOut();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
          },
          child: Icon(Icons.logout),
        ),
      ),
    );
  }

}

