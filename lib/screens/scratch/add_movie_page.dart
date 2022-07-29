import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiselect/multiselect.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final gageController = TextEditingController();
  final pompeController = TextEditingController();
  List<String> categorie = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un Gage'),
      ),
      body: Padding(padding:EdgeInsets.all(10) ,
      child: Column(
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(color: Colors.black, width: 1.5),
            ),
            title: Row(
              children: [
                Text('Gage: '),
                Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      controller: gageController,
                    ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(color: Colors.black, width: 1.5),
            ),
            title: Row(
              children: [
                Text('Pompe: '),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    controller: pompeController,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          DropDownMultiSelect(
            onChanged: (List<String> x) {
              setState(() {
                categorie =x;
              });
            },
            options: [
              'Famille' ,
              'A deux' ,
              'Soirée'
            ],
            selectedValues: categorie,
            whenEmpty: 'Catégorie',
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
              onPressed: () {
              FirebaseFirestore.instance.collection('grattage').add({
                'gage': gageController.value.text,
                'pompe': pompeController.value.text,
                'categorie': categorie,
                'likes': 0,
              });
              Navigator.pop(context);
              },
              child: Text('Ajouter'))
        ],
      ),
      ),
    );
  }
}
