/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import "dart:math";

class ScratchScreen_deux extends StatefulWidget{
  _ScratchScreenDeuxState createState()=> _ScratchScreenDeuxState();
}

class _ScratchScreenDeuxState extends State<ScratchScreen_deux> {
  var list = [
    'Se bander les yeux pendant un temps imposé par le\'autre (5 minutes, 10 minutes …)',
    'Payer sa tournée',
    'Faire une déclaration d’amour',
    'Faire un discours élogieux sur l’amitié',
    'Faire une série de pompe',
    'Appeler un numéro au hasard et tiens la conversation le plus longtemps possible',
    'Imiter le cris d\'un animal',
    'Imiter la gestuelle d\'un animal',
    'Faire une démonstration de air guitare',
    'Faire une démonstration de air sexe',
    'Interdiction de dire “non” jusqu\'a la fin des 5 gages suivants',
    'Interdiction de refuser un verre',
    'Balancer un dossier sur soi',
    'Répéter en double pendant 2 minutes',
    'Twitter de son compte perso : j\'aime AKRO',
    'Facebook de son compte perso : j\'aime AKRO',
    'Story Snap de son compte perso : je kiff l\'appli AKRO... j\'en suis meme akro ^^',
    'Faire dix tours sur lui-même avec un balai',
    'Boire un cocktail préparé par l\'autre',
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
                height: 270,
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
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text ('Répetes ',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal),),
                            Text(contentlist_number,style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal),),
                            Text (' fois :',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal),),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Text ('Tu es meilleur que moi à AKRO',style: TextStyle(
                            fontSize: 16,
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
}*/
//-----------------------------------------------------test firebase--------------
/*class GrattageInformation extends StatefulWidget {
  const GrattageInformation({Key? key}) : super(key: key);

  @override
  _GrattageInformationState createState() => _GrattageInformationState();
}

class _GrattageInformationState extends State<GrattageInformation> {
  final Stream<QuerySnapshot> _grattageStream = FirebaseFirestore.instance.collection('grattage').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _grattageStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['gage']),
              subtitle: Text(data['pompe']),
            );
          }).toList(),
        );
      },
    );
  }
}*/
/*-------------------------------------------------essai-------*/
import 'package:akro/screens/scratch/add_movie_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';
import "dart:math";

import 'add_movie_page.dart';
Future<String> get contentList async {
  var list = [
    '9roBMDeIE5vIhfNG81tI',
    'MdQj6DI5Hgw6zr4itGFJ',
    'PfyKXULRUWxuzYmqLmAf'
  ];
  final _random = new Random();
  String contentlist = list[_random.nextInt(list.length)];
  print(contentlist);
  return contentlist;
}

class ScratchScreen_deux extends StatefulWidget{
  _ScratchScreenDeuxState createState()=> _ScratchScreenDeuxState();
}

class _ScratchScreenDeuxState extends State<ScratchScreen_deux> {

  /*var list = [
    'Se bander les yeux pendant un temps imposé par le\'autre (5 minutes, 10 minutes …)',
    'Payer sa tournée',
    'Faire une déclaration d’amour',
    'Faire un discours élogieux sur l’amitié',
    'Faire une série de pompe',
    'Appeler un numéro au hasard et tiens la conversation le plus longtemps possible',
    'Imiter le cris d\'un animal',
    'Imiter la gestuelle d\'un animal',
    'Faire une démonstration de air guitare',
    'Faire une démonstration de air sexe',
    'Interdiction de dire “non” jusqu\'a la fin des 5 gages suivants',
    'Interdiction de refuser un verre',
    'Balancer un dossier sur soi',
    'Répéter en double pendant 2 minutes',
    'Twitter de son compte perso : j\'aime AKRO',
    'Facebook de son compte perso : j\'aime AKRO',
    'Story Snap de son compte perso : je kiff l\'appli AKRO... j\'en suis meme akro ^^',
    'Faire dix tours sur lui-même avec un balai',
    'Boire un cocktail préparé par l\'autre',
  ];*/
  /*var list_number = [
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
  ];*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grattage base de données'),
        leading: IconButton(icon: Icon(Icons.add),onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context){
                return const AddPage();
              },
                fullscreenDialog: true,
              ));
        },),
      ),
      body: GrattageInformation(),
    );
  }
}
//-----------------------------------------------------test firebase--------------
class GrattageInformation extends StatefulWidget {
  const GrattageInformation({Key? key}) : super(key: key);

  @override
  _GrattageInformationState createState() => _GrattageInformationState();
}

class _GrattageInformationState extends State<GrattageInformation> {

  CollectionReference _gage = FirebaseFirestore.instance.collection('grattage');

  final Stream<QuerySnapshot> _GrattageStream =
  FirebaseFirestore.instance.collection('grattage').snapshots();

  void addLike(String docID, int likes) {
    var newLikes = likes + 1;
    try{
      FirebaseFirestore.instance.collection('grattage').doc(docID).update({
        'likes': newLikes,
      }).then((value) => print('données à jour'));
    }catch(e) {
      print(e.toString());
    }
  }


  DocumentSnapshot? GageDetails;




  Future<DocumentSnapshot> getGage() async{
    DocumentSnapshot doc =
        await _gage.doc('9roBMDeIE5vIhfNG81tI').get();
    return doc;
  }

  @override
  void initState(){
    setState(() {
      _gage.doc('9roBMDeIE5vIhfNG81tI').get().then((value) {
        getGage().then((value) {
          if(mounted){
            setState(() {
              GageDetails = value;
            });
          }
        });
      });
    });
}


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('grattage').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

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
                      height: 10,
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
                SizedBox(height: 250.0),
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
              /*children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> gage = document.data()! as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          gage['gage'],
                        style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text('OU'),
                      Text(gage['pompe']),
                      Row(children: [
                        for (final categorie in gage['categorie'])
                          Padding(padding: const EdgeInsets.only(right: 5),
                          child: Chip(
                            backgroundColor: Colors.lightBlue,
                            label: Text(categorie),
                          ),
                          )

                      ],
                      ),
                      Row(children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          iconSize: 20,
                          icon: const Icon(Icons.favorite),
                          onPressed: () {
                            addLike(document.id, gage['likes']);
                          },
                        ),
                        const SizedBox(width: 10,),
                        Text(gage['likes'].toString())
                      ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            );
          }).toList(),*/
            ),
          ),
        );
      },
    );
  }
  Future<void> scratchDialog(BuildContext context) {

    return showDialog(
        context: context,
        builder: (context) {

          var list = [
            '9roBMDeIE5vIhfNG81tI',
            'MdQj6DI5Hgw6zr4itGFJ',
            'PfyKXULRUWxuzYmqLmAf'
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

          String contentlist = list[_random.nextInt(list.length)];
          String contentlist_number = list_number[_random.nextInt(list_number.length)];

          return StreamBuilder<QuerySnapshot>(
            stream: _GrattageStream,
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }
              return StatefulBuilder(
                builder: (context, setState) {
                  return SingleChildScrollView(
                    child: AlertDialog(
                      title: Column(
                        children: snapshot.data!.docs.map((
                            DocumentSnapshot document) {
                          Map<String, dynamic> gage = document.data()! as Map<
                              String,
                              dynamic>;
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8),
                                  child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 220,
                                        child: Text(
                                          gage['gage'],
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      const Text('OU'),
                                      Text(gage['pompe']),
                                      Row(children: [
                                        for (final categorie in gage['categorie'])
                                          Padding(padding: const EdgeInsets.only(
                                              right: 5),
                                            child: Chip(
                                              backgroundColor: Colors.lightBlue,
                                              label: Text(categorie),
                                            ),
                                          )

                                      ],
                                      ),
                                      Row(children: [
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          constraints: const BoxConstraints(),
                                          iconSize: 20,
                                          icon: const Icon(Icons.favorite),
                                          onPressed: () {
                                            addLike(document.id, gage['likes']);
                                          },
                                        ),
                                        const SizedBox(width: 10,),
                                        Text(gage['likes'].toString())
                                      ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      content: Container(
                        height: 260,
                        child: Column(
                          children: [
                            StatefulBuilder(
                                builder: (context, StateSetter setState) {
                                  return Column(
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
                                      SizedBox(height: 10),
                                      Scratcher(
                                        color: Colors.grey,
                                        accuracy: ScratchAccuracy.medium,
                                        threshold: 30,
                                        brushSize: 40,
                                        child: Container(
                                          height: MediaQuery
                                              .of(context)
                                              .size
                                              .height * 0.2,
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * 0.6,
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  child: Center(child:
                                                  Text(
                                                      '${GageDetails?['gage']}'
                                                  )))
                                            ],
                                          ),
                                        ),

                                      ),
                                    ],
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
                    ),
                  );
                },
              );
            },
          );
        });

  }
}