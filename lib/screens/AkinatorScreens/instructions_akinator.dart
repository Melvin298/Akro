import 'package:akro/screens/AkinatorScreens/player_akinator.dart';
import 'package:akro/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class InsAkinatorScreen extends StatefulWidget {
  _InsAkinatorScreenState createState() => _InsAkinatorScreenState();
}

class _InsAkinatorScreenState extends State<InsAkinatorScreen> {
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
                    'Le maitre du jeu doit trouver un mot et le garder dans sa tête (un objet / une personne ...). Les autres joueurs ont le droit de poser une question par tour. Le gagnant gagner 1 point. Il y a 10 parties. Le premier à 10 points gagne le jeu.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Pattaya',
                      fontWeight: FontWeight.w100,
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'PS : Si une personne dit le mot qu’il pense mais il n’est pas bon il pert la partie instantanémant. Quand une personne pert le maitre du jeu doit donner un indice (plus ou moins gros, c’est lui qui choisi) ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Pattaya',
                      fontWeight: FontWeight.w100,
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150.0),
              Center(
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(20.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PlayerAkinatorScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      height: 80.0,
                      //MediaQuery.of(context).size.width * .08,
                      width: 300.0,
                      //MediaQuery.of(context).size.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: Center(
                        child: Text(
                          'Qui Joue ?',
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
      ),
    );
  }
}
