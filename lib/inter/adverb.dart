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
                style: Theme.of(context).textTheme.bodyMedium,
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
                style: Theme.of(context).textTheme.bodyMedium,
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
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'quickly',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'rapide (fast)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'lentement',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'slowly',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'lent (slow)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'bien',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'well',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'bon(ne) (good)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            "mal",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'badly',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'mauvais(e) (bad)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'doucement',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'gently',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'doux / douce (soft)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'bruyamment',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'loudly',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'bruyant(e) (noisy)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'facilement',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'easily',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'facile (easy)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'difficilement	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'difficultly',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'difficile (difficult)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm
