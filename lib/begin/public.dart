// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Public extends StatelessWidget {
  const Public({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Public holidays and special days(Festivals)'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                publicIntro,
                style: TextStyle(fontSize: 16),
              ),

              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Pub(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                'You can check the french name of the festivals you celebrate in your country by using  the translator in this app.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
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

class Pub extends StatelessWidget {
  const Pub({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'English',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('French',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('New Year\'s Day',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('Le jour de l\'an',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Easter', textAlign: TextAlign.center),
          SelectableText(' Pâques', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("Labor Day ", textAlign: TextAlign.center),
          SelectableText('La fête du travail', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Victory in Europe Day ', textAlign: TextAlign.center),
          SelectableText('Le jour de la Victoire', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Bastille Day', textAlign: TextAlign.center),
          SelectableText('(Le 14 juillet', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('All Saints\' Day ', textAlign: TextAlign.center),
          SelectableText('(La Toussaint', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Christmas ', textAlign: TextAlign.center),
          SelectableText('Noël', textAlign: TextAlign.center),
          SelectableText(' ', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('French national day', textAlign: TextAlign.center),
          SelectableText('  La fête  nationale de la France',
              textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('La saint valentin', textAlign: TextAlign.center),
          SelectableText('La saint valentin', textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Boxing day', textAlign: TextAlign.center),
          SelectableText('La Journée des boxeurs ',
              textAlign: TextAlign.center),
          SelectableText('', textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm
