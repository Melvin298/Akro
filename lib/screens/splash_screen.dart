import 'dart:async';

import 'package:akro/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen())));


    var assetsImage = new AssetImage(
        'images/new_logo.png'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height:300); //<- Creates a widget that displays an image.

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
              child: Container(
                    child: Text(
                      'Akro',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w100,
                        fontSize: 100,
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

              )
          ),
          SizedBox(width: 60.0),
          Positioned.fill(
            top: 620.0,
            child: Align(
                alignment: Alignment.center,
                child: Container(
                    child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent), strokeWidth: 3,),
                    width: 25,
                    height: 25
                )
            ),
          )
        ],
      ),
    ));

  }
}
