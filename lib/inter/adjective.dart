// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/inter/configuration.dart';

import 'package:frenchify/main.dart';

class Adjective extends StatelessWidget {
  const Adjective({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Adjective'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                addIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Tables(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                addFooter,
                style: TextStyle(fontSize: 16),
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

//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm

class Tables extends StatelessWidget {
  const Tables({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
          children: [
            TableRow(children: [
              SelectableText(
                'Adjective',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Masculine form',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Feminine form',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            TableRow(children: [
              SelectableText('Beau/belle	'),
              SelectableText('Beau'),
              SelectableText('Belle	'),
            ]),
            TableRow(children: [
              SelectableText('Grand/grande'),
              SelectableText('Grand'),
              SelectableText('Grande'),
            ]),
            TableRow(children: [
              SelectableText('Petit/petite'),
              SelectableText('	Petit'),
              SelectableText('	Petite'),
            ]),
            TableRow(children: [
              SelectableText('Vieux/vieille'),
              SelectableText('Vieux	'),
              SelectableText('Vieille'),
            ]),
            TableRow(children: [
              SelectableText('Grand/grande'),
              SelectableText('Grand'),
              SelectableText('Grande'),
            ]),
            TableRow(children: [
              SelectableText('Bon/bonne'),
              SelectableText('Bon	'),
              SelectableText('Bonne'),
            ]),
            TableRow(children: [
              SelectableText('Mauvais/mauvaise'),
              SelectableText('Mauvais'),
              SelectableText('Mauvaise'),
            ]),
            TableRow(children: [
              SelectableText('Gros/grosse'),
              SelectableText('Gros	'),
              SelectableText('Grosse'),
            ]),
            TableRow(children: [
              SelectableText('Fort/forte'),
              SelectableText('Fort'),
              SelectableText('Forte'),
            ]),
            TableRow(children: [
              SelectableText('Nouveau'),
              SelectableText('Nouveau'),
              SelectableText('Nouvelle'),
            ]),
          ],
        ));
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm
