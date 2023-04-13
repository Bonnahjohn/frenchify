// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 128, 1),
        title: Text('Greetings and Introduction'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                introText,
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                para,
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
                note,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              SelectableText(
                'French Introduction',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                intro,
                style: TextStyle(fontSize: 16),
              ),
              //introduction class mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 30,
              ),
              Introduction(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                footerIntro,
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
          backgroundColor: Color.fromRGBO(0, 0, 128, 1),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
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
              SelectableText('Greetings'),
              Text('Pronunciation'),
              Text('Meaning'),
            ]),
            TableRow(children: [
              Text('Bonjour'),
              Text('bohn-joor'),
              Text('Good day / Hello'),
            ]),
            TableRow(children: [
              Text('Bonsoir'),
              Text('bohn-swahr'),
              Text('Good evening'),
            ]),
            TableRow(children: [
              Text('Salut'),
              Text('sah-lyoo'),
              Text('Hi / Hey'),
            ]),
            TableRow(children: [
              Text('Coucou'),
              Text('coo-coo'),
              Text('Hi / Hello'),
            ]),
            TableRow(children: [
              Text('Comment ça va ?'),
              Text('koh-mohn sah vah'),
              Text('How are you?'),
            ]),
            TableRow(children: [
              Text('Ça va ?'),
              Text('sah vah'),
              Text('Are you OK?'),
            ]),
            TableRow(children: [
              Text('Bienvenue'),
              Text('byah-ven-yoo'),
              Text('Welcome'),
            ]),
          ],
        ));
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
          children: [
            TableRow(children: [
              SelectableText(
                'French',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'Pronunciation (Approximate)',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'English Translation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ]),
            TableRow(children: [
              SelectableText(
                'Bonjour',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'bohn-joor',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'Good day / Hello',
                style: TextStyle(fontSize: 16),
              ),
            ]),
            TableRow(children: [
              SelectableText('Comment ça va?'),
              SelectableText('koh-mahn sah vah'),
              SelectableText('How are you?'),
            ]),
            TableRow(children: [
              SelectableText("Je m'appelle [your name]"),
              SelectableText('zhuh mah-pehl [your name]'),
              SelectableText('My name is [your name]'),
            ]),
            TableRow(children: [
              SelectableText(
                'Enchanté(e)',
              ),
              SelectableText('ahn-shahn-tay'),
              SelectableText('Nice to meet you'),
            ]),
            TableRow(children: [
              SelectableText('Au revoir'),
              SelectableText('oh ruh-vwahr'),
              SelectableText('Goodbye'),
            ]),
          ],
        ));
  }
}
