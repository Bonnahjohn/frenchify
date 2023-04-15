// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Time extends StatelessWidget {
  const Time({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Time and date'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                dateIntro,
                style: TextStyle(fontSize: 16),
              ),

              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Dates(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                'Time/L\'heure',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                timeIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              My(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                'Asking question about time.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SelectableText(
                'Quelle heure est-il ? /Il est quelle heure ?(What says the time)',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SelectableText(
                'Responds',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SelectableText(
                'Il est...(It is ...)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SelectableText(
                timeFooter,
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

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Dates extends StatelessWidget {
  const Dates({super.key});

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
          SelectableText('Meaning',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('Aujourd\'hui',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('oh-zhoor-dwee',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('Today',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Demain', textAlign: TextAlign.center),
          SelectableText(' duh-mahn', textAlign: TextAlign.center),
          SelectableText('Tomorrow', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("Hier", textAlign: TextAlign.center),
          SelectableText('ee-air', textAlign: TextAlign.center),
          SelectableText('Yesterday', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Maintenant', textAlign: TextAlign.center),
          SelectableText('mehnt-nahn', textAlign: TextAlign.center),
          SelectableText('Now', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Midi', textAlign: TextAlign.center),
          SelectableText('mee-dee', textAlign: TextAlign.center),
          SelectableText('Noon', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Minuit', textAlign: TextAlign.center),
          SelectableText('mee-nwee', textAlign: TextAlign.center),
          SelectableText('Midnight', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Matin', textAlign: TextAlign.center),
          SelectableText('ma-tahn', textAlign: TextAlign.center),
          SelectableText(' Morning', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Après-midi', textAlign: TextAlign.center),
          SelectableText(' ap-reh-mee-dee', textAlign: TextAlign.center),
          SelectableText('Afternoon', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Soir', textAlign: TextAlign.center),
          SelectableText(' swahr', textAlign: TextAlign.center),
          SelectableText('Evening', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Nuit	', textAlign: TextAlign.center),
          SelectableText('nwee', textAlign: TextAlign.center),
          SelectableText('Night', textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class My extends StatelessWidget {
  const My({super.key});

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
          SelectableText('Meaning',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('Heure	',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('ur',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('Hour',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Minute', textAlign: TextAlign.center),
          SelectableText(' meenoot', textAlign: TextAlign.center),
          SelectableText('Minute', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("Seconde", textAlign: TextAlign.center),
          SelectableText('suh-gawnd', textAlign: TextAlign.center),
          SelectableText('Second', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Quart d\'heure', textAlign: TextAlign.center),
          SelectableText('kahr deer', textAlign: TextAlign.center),
          SelectableText('15 minutes', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Demi-heure', textAlign: TextAlign.center),
          SelectableText('duh-mee ur', textAlign: TextAlign.center),
          SelectableText('Half hour', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Trois quarts d\'heure', textAlign: TextAlign.center),
          SelectableText('trwah kahr deer', textAlign: TextAlign.center),
          SelectableText('45 minutes', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Une heure pile', textAlign: TextAlign.center),
          SelectableText('oon ur peel', textAlign: TextAlign.center),
          SelectableText(' Exactly one hour', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Une heure et demie', textAlign: TextAlign.center),
          SelectableText(' oon ur ay duh-mee', textAlign: TextAlign.center),
          SelectableText('One and a half hours', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('Deux heures moins le quart',
              textAlign: TextAlign.center),
          SelectableText('	duh zuhr mwahn luh kahr',
              textAlign: TextAlign.center),
          SelectableText('Quarter to two', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('20 heures', textAlign: TextAlign.center),
          SelectableText('	vahn-teur', textAlign: TextAlign.center),
          SelectableText('8 o\'clock', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('15 heures', textAlign: TextAlign.center),
          SelectableText('	kah-torz eur', textAlign: TextAlign.center),
          SelectableText('3 o\'clock', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('12 heures', textAlign: TextAlign.center),
          SelectableText("douze eur", textAlign: TextAlign.center),
          SelectableText("6 o'clock", textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('6 heures', textAlign: TextAlign.center),
          SelectableText('	siss eur', textAlign: TextAlign.center),
          SelectableText('6 o\'clock', textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
