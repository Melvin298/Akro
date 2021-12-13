import 'package:akro/screens/Touve_objet/objet_soiree.dart';
import 'package:akro/screens/scratch/scratch_soiree.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SoireeScreen extends StatefulWidget{
  _SoireeScreenState createState()=> _SoireeScreenState();
}

class _SoireeScreenState extends State<SoireeScreen>{

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
            vertical: 50,
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
                      fit: BoxFit.none,
                      child: Container(
                        margin: EdgeInsets.only(top: 80.0),
                        child: Text(
                          'Akro',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w100,
                            fontSize: 90.0,
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
              SizedBox(height: 200.0),
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
                          'Soirée',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Pattaya',
                            fontWeight: FontWeight.w100,
                            fontSize: 36.0,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.0),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Center(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(20.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ObjetSoireeScreen()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(0.0),
                              height: 140.0,
                              //MediaQuery.of(context).size.width * .08,
                              width: 150.0,
                              //MediaQuery.of(context).size.width * .3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20.0),
                                  Image.asset(
                                      'assets/images/icons/ic_loupe.png',
                                      height: 70,
                                      fit:BoxFit.fill
                                  ),
                                  SizedBox(height: 10.0),
                                  Expanded(
                                    child: Text(
                                      'Trouve l’objet',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w200,
                                        fontSize: 18.0,
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
                      Center(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(20.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScratchScreen_soiree()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(0.0),
                              height: 140.0,
                              //MediaQuery.of(context).size.width * .08,
                              width: 150.0,
                              //MediaQuery.of(context).size.width * .3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                              ),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20.0),
                                  Image.asset(
                                      'assets/images/icons/ic_grattage-gage.png',
                                      height: 70,
                                      fit:BoxFit.fill
                                  ),
                                  SizedBox(height: 10.0),
                                  Expanded(
                                    child: Text(
                                      'Grattage GAGE',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w200,
                                        fontSize: 18.0,
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}

