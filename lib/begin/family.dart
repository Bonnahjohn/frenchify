// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Family and relationship'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                famIntro,
                style: TextStyle(fontSize: 16),
              ),

              SelectableText(
                '\nHere is a table that shows the French terms for family members and their relationships:',
                style: TextStyle(fontSize: 16),
              ),
              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Fam(),

              SizedBox(
                height: 10,
              ),
              SelectableText(
                'Overall, French families are close-knit and highly valued, and their language reflects this with specific terms for different family members.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
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

class Fam extends StatelessWidget {
  const Fam({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Family Member',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('French Term',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('Mother',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('Maman',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Father', textAlign: TextAlign.center),
          SelectableText(' Papa', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("Grandmother", textAlign: TextAlign.center),
          SelectableText('Grand-mère', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Grandfather', textAlign: TextAlign.center),
          SelectableText('Grand-père', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Brother', textAlign: TextAlign.center),
          SelectableText('Frère', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Sister', textAlign: TextAlign.center),
          SelectableText('Soeur', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Son', textAlign: TextAlign.center),
          SelectableText('Fils', textAlign: TextAlign.center),
          SelectableText(' ', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Daughter', textAlign: TextAlign.center),
          SelectableText('Fille', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Uncle	', textAlign: TextAlign.center),
          SelectableText('Oncle', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Aunt	', textAlign: TextAlign.center),
          SelectableText('Tante', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Cousin', textAlign: TextAlign.center),
          SelectableText('Cousin(e) ', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Husband	', textAlign: TextAlign.center),
          SelectableText('Mari', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Wife', textAlign: TextAlign.center),
          SelectableText('Femme ', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm
