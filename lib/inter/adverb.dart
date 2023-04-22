// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/inter/configuration.dart';

import 'package:frenchify/main.dart';

class Adverb extends StatelessWidget {
  const Adverb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Adverb'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                adverbIntro,
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
                adverbFooter,
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
    return Table(
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Adverb',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Meaning	',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Adjective',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          Text(
            'rapidement',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'quickly',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'rapide (fast)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          Text(
            'lentement',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'slowly',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'lent (slow)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          Text(
            'bien',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'well',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'bon(ne) (good)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          Text(
            "mal",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'badly',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'mauvais(e) (bad)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          Text(
            'doucement',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'gently',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'doux / douce (soft)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          Text(
            'bruyamment',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'loudly',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'bruyant(e) (noisy)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'facilement',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'easily',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'facile (easy)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
        TableRow(children: [
          Text(
            'difficilement	',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'difficultly',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'difficile (difficult)',
            style: TextStyle(fontSize: 16),
          ),
        ]),
      ],
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm
