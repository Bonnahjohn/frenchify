// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Colour extends StatelessWidget {
  const Colour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Colors and describing things'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                colorIntro,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(
                height: 30,
              ),
              Figure(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                adjectiveIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),

              //introduction class mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 30,
              ),
              Describe(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                myFooter,
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

//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm

class Figure extends StatelessWidget {
  const Figure({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
          children: [
            TableRow(children: [
              SelectableText(
                'Color',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'French Translation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            TableRow(children: [
              SelectableText(' Red'),
              SelectableText(' Rouge'),
            ]),
            TableRow(children: [
              SelectableText(' Yellow'),
              SelectableText(' Orange'),
            ]),
            TableRow(children: [
              SelectableText("  Yellow"),
              SelectableText(' Jaune'),
            ]),
            TableRow(children: [
              SelectableText('  Green'),
              SelectableText(' Vert'),
            ]),
            TableRow(children: [
              SelectableText(' Blue'),
              SelectableText(' Bleu'),
            ]),
            TableRow(children: [
              SelectableText(' Purple'),
              SelectableText(' Violet'),
            ]),
            TableRow(children: [
              SelectableText(' Pink'),
              SelectableText(' Rose'),
            ]),
            TableRow(children: [
              SelectableText(' Black'),
              SelectableText(' Noir'),
            ]),
            TableRow(children: [
              SelectableText(' White'),
              SelectableText(' Blanc'),
            ]),
            TableRow(children: [
              SelectableText(' Brown'),
              SelectableText(' Marron'),
            ]),
            TableRow(children: [
              SelectableText(' Grey'),
              SelectableText(' Gris'),
            ]),
          ],
        ));
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Describe extends StatelessWidget {
  const Describe({super.key});

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
              SelectableText(
                'English Translation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            TableRow(children: [
              SelectableText(
                'Grand(e)',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'Big',
                style: TextStyle(fontSize: 16),
              ),
            ]),
            TableRow(children: [
              SelectableText('Joli(e)'),
              SelectableText('Pretty'),
            ]),
            TableRow(children: [
              SelectableText("Beau/Belle"),
              SelectableText('Beautiful'),
            ]),
            TableRow(children: [
              SelectableText('Mignon(ne)'),
              SelectableText('Cute'),
            ]),
            TableRow(children: [
              SelectableText('Drôle'),
              SelectableText('Funny'),
            ]),
            TableRow(children: [
              SelectableText('Intéressant(e)'),
              SelectableText('Interesting'),
            ]),
            TableRow(children: [
              SelectableText('Bon(ne)'),
              SelectableText('Good'),
            ]),
            TableRow(children: [
              SelectableText('August'),
              SelectableText('Août'),
            ]),
            TableRow(children: [
              SelectableText('September'),
              SelectableText('Septembre'),
            ]),
            TableRow(children: [
              SelectableText('October'),
              SelectableText('Octobre'),
            ]),
            TableRow(children: [
              SelectableText('November'),
              SelectableText('Novembre'),
            ]),
            TableRow(children: [
              SelectableText('December'),
              SelectableText('Décembre'),
            ]),
          ],
        ));
  }
}
