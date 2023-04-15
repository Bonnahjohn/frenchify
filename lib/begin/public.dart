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
          SelectableText('luh zhoor duh ahn',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Easter', textAlign: TextAlign.center),
          SelectableText(' Pâques', textAlign: TextAlign.center),
          SelectableText('pohk', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("Labor Day ", textAlign: TextAlign.center),
          SelectableText('La fête du travail', textAlign: TextAlign.center),
          SelectableText('ah fet doo trav-eye', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Victory in Europe Day ', textAlign: TextAlign.center),
          SelectableText('Le jour de la Victoire', textAlign: TextAlign.center),
          SelectableText('luh zhoor duh lah veek-twahr',
              textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Bastille Day', textAlign: TextAlign.center),
          SelectableText('(Le 14 juillet', textAlign: TextAlign.center),
          SelectableText('luh kah-tohrz jwee-yay', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('All Saints\' Day ', textAlign: TextAlign.center),
          SelectableText('(La Toussaint', textAlign: TextAlign.center),
          SelectableText('lah too-san', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Christmas ', textAlign: TextAlign.center),
          SelectableText('Noël', textAlign: TextAlign.center),
          SelectableText(' noh-EL', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Valentine\'s Day', textAlign: TextAlign.center),
          SelectableText('La saint valentin', textAlign: TextAlign.center),
          SelectableText('lah sahn vah-lahn-tan', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Boxing day', textAlign: TextAlign.center),
          SelectableText('Le lendemain de Noël ', textAlign: TextAlign.center),
          SelectableText('luh luhnduh-mahn duh noh-EL',
              textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm
