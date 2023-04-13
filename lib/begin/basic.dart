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
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Basic phrase'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                basicPhrase,
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
                basicFooter,
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
              SelectableText('French Phrase'),
              Text('Pronunciation'),
              Text('English Translation'),
            ]),
            TableRow(children: [
              Text('Bonjour'),
              Text('bohn-zhoor'),
              Text('Good day / Hello'),
            ]),
            TableRow(children: [
              Text('Au revoir'),
              Text('oh ruh-vwah'),
              Text('Goodbye'),
            ]),
            TableRow(children: [
              Text('Merci'),
              Text('mehr-see'),
              Text('Thank you'),
            ]),
            TableRow(children: [
              Text("S'il vous plaît"),
              Text('seel voo pleh'),
              Text('Please'),
            ]),
            TableRow(children: [
              Text('Oui'),
              Text('wee'),
              Text('Yes'),
            ]),
            TableRow(children: [
              Text('Non'),
              Text('nohn'),
              Text('No'),
            ]),
            TableRow(children: [
              Text('Comment ça va?'),
              Text('koh-mohn sah vah'),
              Text('How are you?'),
            ]),
            TableRow(children: [
              Text('Ça va bien'),
              Text('sah vah byeh'),
              Text('I\'m doing well'),
            ]),
            TableRow(children: [
              Text('Je m\'appelle'),
              Text('zhuh mah-pell'),
              Text('My name is'),
            ]),
            TableRow(children: [
              SelectableText('Excusez-moi'),
              SelectableText('eks-koo-zay mwah'),
              SelectableText('Excuse me'),
            ]),
          ],
        ));
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm