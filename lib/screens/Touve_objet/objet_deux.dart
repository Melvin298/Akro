import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import "dart:math";

class ObjetDeuxScreen extends StatefulWidget {
  _ObjetDeuxScreenState createState() => _ObjetDeuxScreenState();
}

class _ObjetDeuxScreenState extends State<ObjetDeuxScreen> {
  String contentlist = 'https://picsum.photos/250?image=9';
  int list_number = 1;
  void onChanged() {
    setState(() {
      var random = new Random();
      list_number = random.nextInt(8) + 1; // 1 to six
    });
  }

  final _random = new Random();

  @override
  Widget build(BuildContext context) {
    String contentlist = 'https://picsum.photos/250?image=9';
    return Scaffold(
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
                        'Trouve l\'objet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w100,
                          fontSize: 50.0,
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
            Container(margin: EdgeInsets.only(top: 100.0),child: Center(child: Text('(Cliquez sur l\'image pour passer à la suivante)'))),
            SizedBox(height: 50.0),
            FlatButton(
              onPressed: () {
                onChanged();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/find_img/deux/$list_number.jpg',
                  height: 300.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
              )
            ),
          ],
        ),
      ),

    );
  }

}
