// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/inter/Tense/present.dart';
import 'package:frenchify/inter/adjective.dart';
import 'package:frenchify/inter/adverb.dart';
import 'package:frenchify/inter/pronoun.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/inter/noun.dart';
import 'package:frenchify/inter/verb.dart';
import 'package:frenchify/inter/Tense/tenses.dart';
import 'package:frenchify/inter/preposition.dart';

class Intermediate extends StatelessWidget {
  const Intermediate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Nouns and Articles'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Noun()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Pronouns'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pronoun()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Verbs'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Verb()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/tense.jpg',
                    width: 60, height: 50),
                title: Text('Tenses'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tense()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/adverb.jpg',
                    width: 60, height: 100),
                title: const Text('Adverbs'),
                subtitle: const Text(""),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Adverb()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/adjective.jpg',
                    width: 60, height: 100),
                title: Text('adjectives'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Adjective()));
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/prep.png',
                    width: 60, height: 50),
                title: Text('prepositions'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/preposition');
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}
