import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import "dart:math";

class ScratchScreen_soiree extends StatefulWidget{
  _ScratchScreenSoireeState createState()=> _ScratchScreenSoireeState();
}

class _ScratchScreenSoireeState extends State<ScratchScreen_soiree> {
  var list = [
    'Boire un verre cul-sec',
    'Fait croire à un passant que vous vous connaissez',
    'Boire un shooter sans les mains',
    'Enlever un vêtement',
    'Se bander les yeux pendant un temps imposé par les autres (5 minutes, 10 minutes …)',
    'Les perdant est à la disposition de la personne qu\'il/elle trouve le/la plus bg dans la pieces',
    'Payer sa tournée dans un bar',
    'Faire une déclaration d’amour',
    'Faire un discours élogieux sur l’amitié',
    'Faire une série de pompe',
    'Appeler un numéro au hasard et tiens la conversation le plus longtemps possible',
    'Devenir le Marjordome de tout le monde pendant 5 minutes',
    'Imiter le cris d\'un animal',
    'Imiter la gestuelle d\'un animal',
    'Faire une démonstration de air guitare',
    'Faire une démonstration de air sexe',
    'Simuler un orgasme',
    'Interdiction de dire “non” jusqu\'a la fin des 7 gages suivants',
    'Interdiction de refuser un verre',
    'Appeler une personne inconnue et lui faire dire un mot imposé avant qu\'il ne raccroche',
    'Appeler une personne inconnue et placer 3 fois un mot imposé avant qu\'il raccroche sans les dire à la suite',
    'Balancer un dossier sur soi',
    'Echanger tes vetements avec la personne à ta droite',
    'Faire le striker tout nu dans la rue ou le jardin',
    'Faire du pole dance autour d\'un lampadaire',
    'Enlever un vêtement',
    'Répéter en double',
    'Faire un strip-tease',
    'Twitter de son compte perso : j\'aime AKRO',
    'Facebook de son compte perso : j\'aime AKRO',
    'Story Snap de son compte perso : je kiff l\'appli AKRO... j\'en suis meme akro ^^',
    'Faire dix tours sur lui-même avec un balai',
    'Boire un cocktail préparé par les autres',
    'Se faire maquiller par un mec (si le perdant est une fille)',
  ];
  var list_number = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
  ];
  final _random = new Random();

  @override
  Widget build(BuildContext context) {
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
                        'Grattage GAGE',
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
            SizedBox(height: 300.0),
            Center(
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  onTap: () {
                    scratchDialog(context);
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
                        'Afficher le gage',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
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

  Future<void> scratchDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        String contentlist_number = list_number[_random.nextInt(list_number.length)];
        String contentlist = list[_random.nextInt(list.length)];
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Ton GAGE",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              content: Container(
                height: 240,
                child: Column(
                  children: [
                    StatefulBuilder(builder: (context, StateSetter setState) {
                      return Scratcher(
                        color: Colors.grey,
                        accuracy: ScratchAccuracy.medium,
                        threshold: 30,
                        brushSize: 40,
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.6,
                          child: Column(
                            children: [
                              Expanded(child: Center(child: Text(contentlist)))
                            ],
                          ),
                        ),

                      );
                    }),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.center,
                      child: Text("OU",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text ('Bois ',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal),),
                        Text(contentlist_number,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal),),
                        Text (' gorgée(s)',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Fermer"),
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      contentlist_number = list_number[_random.nextInt(list_number.length)];
                      contentlist = list[_random.nextInt(list.length)];
                    });
                  },
                  child: Text("Actualiser le texte"),
                ),
              ],
            );
          },
        );
      },
    );
  }
}