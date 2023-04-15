// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'config.dart';

class Descriptive extends StatelessWidget {
  const Descriptive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Descriptive Essay'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                desIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/one.jpeg',
              ),
              SizedBox(
                height: 30,
              ),
              Tables(),
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
                'French Phrase',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Pronunciation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'English Translation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
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
