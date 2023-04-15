// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Weather and seasons'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                season,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Season(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                'When talking about seasons, the French use the same names as in English:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Four(),
              SizedBox(
                height: 10,
              ),
              SelectableText(
                  "Now, you can talk about the weather and seasons just like the French do!"),
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
//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm

class Season extends StatelessWidget {
  const Season({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
          children: [
            TableRow(children: [
              SelectableText(
                'French Phrase',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'English Translation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            TableRow(children: [
              SelectableText(' Il fait beau.'),
              SelectableText(' It\'s nice out.'),
            ]),
            TableRow(children: [
              SelectableText('Il fait chaud'),
              SelectableText(' It\'s hot out.'),
            ]),
            TableRow(children: [
              SelectableText("  Il fait froid."),
              SelectableText(' It\'s cold out.'),
            ]),
            TableRow(children: [
              SelectableText(' Il pleut.'),
              SelectableText(' It\'s raining.'),
            ]),
            TableRow(children: [
              SelectableText(' Il neige.'),
              SelectableText(' It\'s snowing.'),
            ]),
            TableRow(children: [
              SelectableText(' Il y a du vent.	'),
              SelectableText(' It\'s windy.'),
            ]),
            TableRow(children: [
              SelectableText(' Le ciel est couvert.'),
              SelectableText(' The sky is overcast.'),
            ]),
            TableRow(children: [
              SelectableText(' Le temps est nuageux.'),
              SelectableText(' The weather is cloudy.'),
            ]),
            TableRow(children: [
              SelectableText(' Il y a un orage.'),
              SelectableText(' There\'s a storm.'),
            ]),
          ],
        ));
  }
}

class Four extends StatelessWidget {
  const Four({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
          children: [
            TableRow(children: [
              SelectableText(
                'Les quatre saisons de l\'annee',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'The four seasons of the year',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            TableRow(children: [
              SelectableText(' le printemps'),
              SelectableText(' spring'),
            ]),
            TableRow(children: [
              SelectableText(' l\'été	'),
              SelectableText(' summer'),
            ]),
            TableRow(children: [
              SelectableText("  l'automne"),
              SelectableText(' fall/autumn'),
            ]),
            TableRow(children: [
              SelectableText(' l\'hiver.'),
              SelectableText(' winter'),
            ]),
            TableRow(children: [
              SelectableText(' '),
              SelectableText(' '),
            ]),
            TableRow(children: [
              SelectableText(' 	'),
              SelectableText(' '),
            ]),
            TableRow(children: [
              SelectableText(' Le Printemps commence en mars'),
              SelectableText(' Spring begins in march'),
            ]),
            TableRow(children: [
              SelectableText(' l\'été	 commence en septembre'),
              SelectableText(' Summer begins in june'),
            ]),
            TableRow(children: [
              SelectableText("  l'automne  commence en septembre"),
              SelectableText(' Autumn  begins in september'),
            ]),
            TableRow(children: [
              SelectableText("  l'hiver commence en  décember"),
              SelectableText(' Winter begins in september'),
            ]),
          ],
        ));
  }
}
