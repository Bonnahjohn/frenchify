// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Prof extends StatelessWidget {
  const Prof({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Profession'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                profIntro,
                style: TextStyle(fontSize: 16),
              ),

              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Nums(),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 25,
              ),
              SelectableText(
                profFooter,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(100, 149, 237, 1),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Nums extends StatelessWidget {
  const Nums({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'French',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('English',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('Médecin',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('meh-duh-SAN',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('Doctor',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Avocat', textAlign: TextAlign.center),
          SelectableText(' ah-voh-KAH', textAlign: TextAlign.center),
          SelectableText('Lawyer', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("Enseignant(e)", textAlign: TextAlign.center),
          SelectableText('on-say-nyahn(t)', textAlign: TextAlign.center),
          SelectableText('Teacher', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Ingénieur(e)', textAlign: TextAlign.center),
          SelectableText('an-jay-nieur', textAlign: TextAlign.center),
          SelectableText('Engineer', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Artiste', textAlign: TextAlign.center),
          SelectableText('ar-teest ', textAlign: TextAlign.center),
          SelectableText('Artist', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Journaliste', textAlign: TextAlign.center),
          SelectableText('	zhoor-nah-leest', textAlign: TextAlign.center),
          SelectableText('Journalist', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Vendeur(euse)', textAlign: TextAlign.center),
          SelectableText('von-duhr(uh)', textAlign: TextAlign.center),
          SelectableText(' Salesperson', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Chef de cuisine', textAlign: TextAlign.center),
          SelectableText(' shef duh kwee-zeen', textAlign: TextAlign.center),
          SelectableText('Chef', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Écrivain(e)', textAlign: TextAlign.center),
          SelectableText('ay-kree-van', textAlign: TextAlign.center),
          SelectableText('Writer', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Policier(ère)', textAlign: TextAlign.center),
          SelectableText(' poh-lee-see-ay(uhr)', textAlign: TextAlign.center),
          SelectableText(' Police officer', textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm
