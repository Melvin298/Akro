import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import "dart:math";

class ScratchScreen_famille extends StatefulWidget{
  _ScratchScreenFamilleState createState()=> _ScratchScreenFamilleState();
}

class _ScratchScreenFamilleState extends State<ScratchScreen_famille> {
  var list = [
    'Chanter une chanson accapella',
    'Chanter une chanson avec de l’eau dans la bouche',
    'Chanter une chanson avec des chamallows dans la bouche',
    'Chanter une chanson imposée tout en écoutant une autre chanson (casque nécessaire)',
    'Raconter une blague',
    'Raconter une blague dans une autre langue',
    'Manger un aliment (piment, moutarde, poivre, oignon…)',
    'Mettre ses vêtements à l’envers',
    'Porter un déguisement imposé (le costume du looser)',
    'Passer le reste de la soirée avec ses chaussettes sur les mains',
    'Danser sur une chanson imposée',
    'Danser la macarena sur une autre chanson',
    'Parler pendant 2 minutes sur un thème imposé',
    'Parler dans une autre langue pendant 2 minutes sur un thème imposé',
    'Attacher les 2 mains du perdant',
    'Organiser un repas pour le ou les gagnants',
    'Faire une série de pompe',
    'Faire un tour de la maison avec la personne qui est en face de toi',
    'Interdiction de parler pendant 2 minutes',
    'Faire le champ du coq à chaque heure de la soirée',
    'Refaire la scène avec Gandalf du Seigneur des Anneaux “vous ne passerez pas !!!”',
    'Rentrer le plus de chamallows dans la bouche',
    'Imiter le cris d\'un animal',
    'Imiter la gestuelle d\'un animal',
    'Attacher les jambes du perdant pendant un temps imposé',
    'Mettre en scène une expression ou proverbe',
    'Devenir le Marjordome de tout le monde pendant 5 minutes',
    'Echanger tes vetements avec la personne à ta droite',
    'Manger une cuillère de cannelle',
    'Manger un petit beurre en moins d\'une minute',
    'Balancer un dossier sur soi',
    'Raconter sa dernière journée en détail',
    'Imiter la personne à ta gauche ',
    'Se déplacer en moonwalk',
    'Chanter s\'il veut s\'exprimer',
    'Demander l\'autorisation pour aller aux toilettes',
    'Mettre du vernis sur les mains ou les pieds',
    'Parler sans utiliser un lettre définie par les autres',
    'Parler en chantant',
    'Twitter de son compte perso : j\'aime AKRO',
    'Facebook de son compte perso : j\'aime AKRO',
    'Faire la macarena à l\'envers',
    'Se faire prendre en photo dans une position définie par les autres',
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
                        Text ('Fait ',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal),),
                        Text(contentlist_number,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal),),
                        Text (' pompe(s)',style: TextStyle(
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